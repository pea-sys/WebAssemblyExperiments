(
    ;;ルートmoduleノード
    module  

    ;; Types
    (type $FUNCSIG$v (func))
    (type $FUNCSIG$vi (func (param i32)))
    (type $FUNCSIG$vii (func (param i32 i32))) 
    (type $FUNCSIG$viii (func (param i32 i32 i32))) 
    (type $FUNCSIG$viiii (func (param i32 i32 i32 i32))) 
    (type $FUNCSIG$ii (func (param i32) (result i32)))
    (type $FUNCSIG$iii (func (param i32 i32) (result i32))) 
    
    ;;importノード
    ;;;From JavaScript
    (import "env" "_GenerateCards"
        (func $GenerateCards (param i32 i32 i32 i32))
    )
    (import "env" "_UpdateTriesTotal"
        (func $UpdateTriesTotal (param i32))
    )
    (import "env" "_FlipCard"
        (func $FlipCard (param i32 i32 i32))
    )
    (import "env" "_RemoveCards"
        (func $RemoveCards (param i32 i32 i32 i32))
    )
    (import "env" "_LevelComplete"
        (func $LevelComplete (param i32 i32 i32))
    )
    (import "env" "_Pause"
        (func $Pause (param i32 i32))
    )
    ;;From Emscripten module
    (import "env" "memory"
        (memory $memory 256)
    )
    (import "env" "_SeedRandomNumberGenerator"
        (func $SeedRandomNumberGenerator)
    )
    (import "env" "_GetRandomNumber"
        (func $GetRandomNumber (param i32) (result i32))
    )
    (import "env" "_malloc"
        (func $malloc (param i32) (result i32))
    )
    (import "env" "_free"
        (func $free (param i32))
    )
    ;;Globalノード
    (global $MAX_LEVEL i32 (i32.const 6))
    (global $cards (mut i32) (i32.const 0))
    (global $current_level (mut i32) (i32.const 0))
    (global $rows (mut i32) (i32.const 0))
    (global $columns (mut i32) (i32.const 0))
    (global $matches_remaining (mut i32) (i32.const 0))
    (global $first_card_row (mut i32) (i32.const 0))
    (global $first_card_column (mut i32) (i32.const 0))
    (global $first_card_value (mut i32) (i32.const 0))
    (global $second_card_row (mut i32) (i32.const 0))
    (global $second_card_column (mut i32) (i32.const 0))
    (global $second_card_value (mut i32) (i32.const 0))
    (global $execution_paused (mut i32) (i32.const 0))
    (global $tries (mut i32) (i32.const 0))
    ;;Exportノード
    (export "_CardSelected" (func $CardSelected))
    (export "_SecondCardSelectedCallback" (func $SecondCardSelectedCallback))
    (export "_ReplayLevel" (func $ReplayLevel))
    (export "_PlayNextLevel" (func $PlayNextLevel))    

    ;;Startノード
    (start $main)
    ;;Codeノード
    (func $InitializeRowsAndColumns (param $level i32)
        ;; レベル1の設定
        local.get $level
        i32.const 1
        i32.eq
        if
        i32.const 2
        global.set $rows

        i32.const 2
        global.set $columns
        end

        ;; レベル2の設定
        local.get $level
        i32.const 2
        i32.eq
        if
        i32.const 2
        global.set $rows

        i32.const 3
        global.set $columns
        end

        ;; レベル3の設定
        local.get $level
        i32.const 3
        i32.eq
        if
        i32.const 2
        global.set $rows

        i32.const 4
        global.set $columns
        end

        ;; レベル4の設定
        local.get $level
        i32.const 4
        i32.eq
        if
        i32.const 3
        global.set $rows

        i32.const 4
        global.set $columns
        end

        ;; レベル5の設定
        local.get $level
        i32.const 5
        i32.eq
        if
        i32.const 4
        global.set $rows

        i32.const 4
        global.set $columns
        end

        ;; レベル6の設定
        local.get $level
        i32.const 6
        i32.eq
        if
        i32.const 4
        global.set $rows

        i32.const 5
        global.set $columns
        end
    )
    (func $ResetSelectedCardValues
        i32.const -1
        global.set $first_card_row

        i32.const -1
        global.set $first_card_column

        i32.const -1
        global.set $first_card_value

        i32.const -1
        global.set $second_card_row

        i32.const -1
        global.set $second_card_column

        i32.const -1
        global.set $second_card_value
    )
    (func $InitializeCards (param $level i32)
        (local $count i32)

        local.get $level
        global.set $current_level
        
        local.get $level
        call $InitializeRowsAndColumns

        call $ResetSelectedCardValues

        global.get $rows
        global.get $columns
        i32.mul
        local.set $count
        
        local.get $count
        i32.const 2
        i32.div_s
        global.set $matches_remaining

        local.get $count
        i32.const 2
        i32.shl ;; カード1枚につき4バイトのメモリが必要なので2つ左シフトする（つまり4倍）
        call $malloc
        global.set $cards

        local.get $count
        call $PopulateArray

        local.get $count
        call $ShuffleArray

        global.get 6
        global.set $tries
    )

    (func $PopulateArray (param $array_length i32)
        (local $index i32)
        (local $card_value i32)

        i32.const 0
        local.set $index
        
        i32.const 0
        local.set $card_value

        loop $while-populate
        local.get $index
        call $GetMemoryLocationFromIndex
        local.get $card_value
        i32.store

        local.get $index
        i32.const 1
        i32.add
        local.set $index

        local.get $index
        call $GetMemoryLocationFromIndex
        local.get $card_value
        i32.store

        local.get $card_value
        i32.const 1
        i32.add
        local.set $card_value

        local.get $index
        i32.const 1
        i32.add
        local.set $index

        local.get $index
        local.get $array_length
        i32.lt_s
        if
            br $while-populate
        end
        end $while-populate
    )
    (func $GetMemoryLocationFromIndex (param $index i32) (result i32)
        local.get $index
        i32.const 2
        i32.shl

        global.get $cards
        i32.add
    )
    (func $ShuffleArray (param $array_length i32)
        (local $index i32)
        (local $memory_location1 i32)
        (local $memory_location2 i32)
        (local $card_to_swap i32)
        (local $card_value i32)

        call $SeedRandomNumberGenerator

        local.get $array_length
        i32.const 1
        i32.sub
        local.set $index

        loop $while-shuffle
        local.get $index
        i32.const 1
        i32.add
        call $GetRandomNumber
        local.set $card_to_swap

        local.get $index
        call $GetMemoryLocationFromIndex
        local.set $memory_location1

        local.get $card_to_swap
        call $GetMemoryLocationFromIndex
        local.set $memory_location2

        local.get $memory_location1
        i32.load
        local.set $card_value

        local.get $memory_location1
        local.get $memory_location2 
        i32.load
        i32.store
        
        local.get $memory_location2
        local.get $card_value
        i32.store

        local.get $index
        i32.const 1
        i32.sub
        local.set $index

        local.get $index
        i32.const 0
        i32.gt_s
        if
            br $while-shuffle
        end 
        end $while-shuffle
    )

    (func $PlayLevel (param $level i32)
        local.get $level
        call $InitializeCards
    
        global.get $rows
        global.get $columns
        local.get $level
        global.get $tries
        call $GenerateCards
    )

    (func $GetCardValue (param $row i32) (param $column i32) (result i32) 
        local.get $row
        global.get $columns
        i32.mul
        local.get $column
        i32.add 

        i32.const 2
        i32.shl
        global.get $cards
        i32.add 
        i32.load 
    )
    (func $CardSelected (param $row i32) (param $column i32)
        (local $card_value i32)

        global.get $execution_paused
        i32.const 1
        i32.eq
        if
        return
        end

        local.get $row
        local.get $column
        call $GetCardValue
        local.set $card_value

        local.get $row
        local.get $column
        local.get $card_value
        call $FlipCard

        global.get $first_card_row
        i32.const -1
        i32.eq
        if
        local.get $row
        global.set $first_card_row
        
        local.get $column
        global.set $first_card_column

        local.get $card_value
        global.set $first_card_value
        else
        local.get $row
        local.get $column
        call $IsFirstCard
        if
            return
        end

        local.get $row
        global.set $second_card_row
        
        local.get $column
        global.set $second_card_column

        local.get $card_value
        global.set $second_card_value

        i32.const 1
        global.set $execution_paused

        i32.const 5120
        i32.const 600
        call $Pause
        end
    )
    (func $IsFirstCard (param $row i32) (param $column i32) (result i32)
        (local $rows_equal i32)
        (local $columns_equal i32)

        global.get $first_card_row
        local.get $row
        i32.eq
        local.set $rows_equal

        global.get $first_card_column
        local.get $column
        i32.eq
        local.set $columns_equal

        local.get $rows_equal
        local.get $columns_equal
        i32.and
    )

    (func $SecondCardSelectedCallback
        (local $is_last_level i32)

        global.get $first_card_value
        global.get $second_card_value
        i32.eq
        if
            global.get $first_card_row
            global.get $first_card_column
            global.get $second_card_row
            global.get $second_card_column
            call $RemoveCards

            global.get $matches_remaining
            i32.const 1
            i32.sub
            global.set $matches_remaining
        else
            global.get $first_card_row
            global.get $first_card_column
            i32.const -1
            call $FlipCard
            
            global.get $second_card_row
            global.get $second_card_column
            i32.const -1
            call $FlipCard
        end

        global.get $tries
        i32.const 1
        i32.add
        global.set $tries
        
        global.get $tries
        call $UpdateTriesTotal

        call $ResetSelectedCardValues

        i32.const 0
        global.set $execution_paused

        global.get $matches_remaining
        i32.const 0
        i32.eq
        if
        global.get $cards
        call $free

        global.get $current_level
        global.get $MAX_LEVEL
        i32.lt_s
        local.set $is_last_level

        global.get $current_level
        global.get $tries
        local.get $is_last_level
        call $LevelComplete
        end
    )

    (func $ReplayLevel
        global.get $current_level
        ;;12.2
        i32.const 0
        global.set $tries

        call $PlayLevel
    )

    (func $PlayNextLevel
        global.get $current_level
        i32.const 1
        i32.add

        ;;12.2
        i32.const 0
        global.set $tries
        
        call $PlayLevel
    )

    (func $main
        i32.const 1    
        call $PlayLevel 
    )

    ;; Data
    (data (i32.const 5120) "SecondCardSelectedCallback")
)