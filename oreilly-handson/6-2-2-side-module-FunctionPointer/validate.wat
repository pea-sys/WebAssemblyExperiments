(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 1)))
  (func (;1;) (type 2))
  (func (;2;) (type 0) (param i32) (result i32)
    local.get 0
    call 20)
  (func (;3;) (type 1) (param i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 21
    end)
  (func (;4;) (type 4) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u
        br_if 1 (;@1;)
      end
      i32.const 1178
      local.get 3
      call_indirect (type 1)
      return
    end
    block  ;; label = @1
      local.get 0
      call 10
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1024
      local.get 3
      call_indirect (type 1)
      return
    end
    local.get 2
    call_indirect (type 2))
  (func (;5;) (type 5) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u
        br_if 1 (;@1;)
      end
      i32.const 1141
      local.get 4
      call_indirect (type 1)
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        br_if 1 (;@1;)
      end
      i32.const 1054
      local.get 4
      call_indirect (type 1)
      return
    end
    local.get 2
    i32.const 0
    i32.gt_s
    local.set 5
    local.get 0
    call 7
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.ge_s
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 5
      local.set 0
      local.get 1
      i32.load
      local.get 6
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 0
          local.get 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          local.set 5
          local.get 1
          local.get 0
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.lt_s
      local.set 0
    end
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1097
      local.get 4
      call_indirect (type 1)
      return
    end
    local.get 3
    call_indirect (type 2))
  (func (;6;) (type 2)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call 1
    end)
  (func (;7;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      local.tee 1
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.load8_s
      call 9
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_s
          local.tee 5
          i32.const -43
          i32.add
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;) 2 (;@1;)
        end
        i32.const 1
        local.set 3
      end
      local.get 0
      i32.load8_s
      local.set 5
      local.get 0
      local.set 1
      local.get 3
      local.set 4
    end
    block  ;; label = @1
      local.get 5
      call 8
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.const 10
        i32.mul
        local.get 1
        i32.load8_s
        i32.sub
        i32.const 48
        i32.add
        local.set 2
        local.get 1
        i32.load8_s offset=1
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        call 8
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.sub
    local.get 4
    select)
  (func (;8;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func (;9;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 32
    i32.eq
    local.get 0
    i32.const -9
    i32.add
    i32.const 5
    i32.lt_u
    i32.or)
  (func (;10;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;11;) (type 1) (param i32)
    local.get 0
    call 0
    unreachable)
  (func (;12;) (type 3) (result i32)
    i32.const 1216)
  (func (;13;) (type 3) (result i32)
    memory.size
    i32.const 16
    i32.shl)
  (func (;14;) (type 2)
    i32.const 1
    call 11
    unreachable)
  (func (;15;) (type 0) (param i32) (result i32)
    i32.const 0)
  (func (;16;) (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    i32.load offset=1212
    local.tee 1
    local.get 0
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        call 13
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        call 15
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 0
      local.get 0
      i32.store offset=1212
      local.get 1
      return
    end
    call 12
    i32.const 48
    i32.store
    i32.const -1)
  (func (;17;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 244
                        i32.gt_u
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1220
                          local.tee 2
                          i32.const 16
                          local.get 0
                          i32.const 11
                          i32.add
                          i32.const -8
                          i32.and
                          local.get 0
                          i32.const 11
                          i32.lt_u
                          select
                          local.tee 3
                          i32.const 3
                          i32.shr_u
                          local.tee 4
                          i32.shr_u
                          local.tee 0
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const -1
                              i32.xor
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.add
                              local.tee 5
                              i32.const 3
                              i32.shl
                              local.tee 4
                              i32.const 1260
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.const 1268
                              i32.add
                              i32.load
                              local.tee 4
                              i32.load offset=8
                              local.tee 3
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              local.get 2
                              i32.const -2
                              local.get 5
                              i32.rotl
                              i32.and
                              i32.store offset=1220
                              br 1 (;@12;)
                            end
                            local.get 3
                            local.get 0
                            i32.store offset=12
                            local.get 0
                            local.get 3
                            i32.store offset=8
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 0
                          local.get 4
                          local.get 5
                          i32.const 3
                          i32.shl
                          local.tee 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 5
                          i32.add
                          local.tee 4
                          local.get 4
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          br 10 (;@1;)
                        end
                        local.get 3
                        i32.const 0
                        i32.load offset=1228
                        local.tee 6
                        i32.le_u
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          local.get 0
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              local.get 4
                              i32.shl
                              i32.const 2
                              local.get 4
                              i32.shl
                              local.tee 0
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.or
                              i32.and
                              local.tee 0
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              i32.ctz
                              local.tee 4
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 1260
                              i32.add
                              local.tee 5
                              local.get 0
                              i32.const 1268
                              i32.add
                              i32.load
                              local.tee 0
                              i32.load offset=8
                              local.tee 7
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              local.get 2
                              i32.const -2
                              local.get 4
                              i32.rotl
                              i32.and
                              local.tee 2
                              i32.store offset=1220
                              br 1 (;@12;)
                            end
                            local.get 7
                            local.get 5
                            i32.store offset=12
                            local.get 5
                            local.get 7
                            i32.store offset=8
                          end
                          local.get 0
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 3
                          i32.add
                          local.tee 7
                          local.get 4
                          i32.const 3
                          i32.shl
                          local.tee 4
                          local.get 3
                          i32.sub
                          local.tee 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 4
                          i32.add
                          local.get 5
                          i32.store
                          block  ;; label = @12
                            local.get 6
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const -8
                            i32.and
                            i32.const 1260
                            i32.add
                            local.set 3
                            i32.const 0
                            i32.load offset=1240
                            local.set 4
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.const 1
                                local.get 6
                                i32.const 3
                                i32.shr_u
                                i32.shl
                                local.tee 8
                                i32.and
                                br_if 0 (;@14;)
                                i32.const 0
                                local.get 2
                                local.get 8
                                i32.or
                                i32.store offset=1220
                                local.get 3
                                local.set 8
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.load offset=8
                              local.set 8
                            end
                            local.get 3
                            local.get 4
                            i32.store offset=8
                            local.get 8
                            local.get 4
                            i32.store offset=12
                            local.get 4
                            local.get 3
                            i32.store offset=12
                            local.get 4
                            local.get 8
                            i32.store offset=8
                          end
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 0
                          i32.const 0
                          local.get 7
                          i32.store offset=1240
                          i32.const 0
                          local.get 5
                          i32.store offset=1228
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load offset=1224
                        local.tee 9
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 9
                        i32.const 0
                        local.get 9
                        i32.sub
                        i32.and
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1524
                        i32.add
                        i32.load
                        local.tee 7
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.sub
                        local.set 4
                        local.get 7
                        local.set 5
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 20
                              i32.add
                              i32.load
                              local.tee 0
                              i32.eqz
                              br_if 2 (;@11;)
                            end
                            local.get 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 3
                            i32.sub
                            local.tee 5
                            local.get 4
                            local.get 5
                            local.get 4
                            i32.lt_u
                            local.tee 5
                            select
                            local.set 4
                            local.get 0
                            local.get 7
                            local.get 5
                            select
                            local.set 7
                            local.get 0
                            local.set 5
                            br 0 (;@12;)
                          end
                          unreachable
                        end
                        local.get 7
                        i32.load offset=24
                        local.set 10
                        block  ;; label = @11
                          local.get 7
                          i32.load offset=12
                          local.tee 8
                          local.get 7
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 7
                          i32.load offset=8
                          local.tee 0
                          i32.const 0
                          i32.load offset=1236
                          i32.lt_u
                          drop
                          local.get 0
                          local.get 8
                          i32.store offset=12
                          local.get 8
                          local.get 0
                          i32.store offset=8
                          br 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 7
                          i32.const 20
                          i32.add
                          local.tee 5
                          i32.load
                          local.tee 0
                          br_if 0 (;@11;)
                          local.get 7
                          i32.load offset=16
                          local.tee 0
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 7
                          i32.const 16
                          i32.add
                          local.set 5
                        end
                        loop  ;; label = @11
                          local.get 5
                          local.set 11
                          local.get 0
                          local.tee 8
                          i32.const 20
                          i32.add
                          local.tee 5
                          i32.load
                          local.tee 0
                          br_if 0 (;@11;)
                          local.get 8
                          i32.const 16
                          i32.add
                          local.set 5
                          local.get 8
                          i32.load offset=16
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                        local.get 11
                        i32.const 0
                        i32.store
                        br 8 (;@2;)
                      end
                      i32.const -1
                      local.set 3
                      local.get 0
                      i32.const -65
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 11
                      i32.add
                      local.tee 0
                      i32.const -8
                      i32.and
                      local.set 3
                      i32.const 0
                      i32.load offset=1224
                      local.tee 6
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 11
                      block  ;; label = @10
                        local.get 3
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 11
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 38
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        i32.clz
                        local.tee 0
                        i32.sub
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 0
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 11
                      end
                      i32.const 0
                      local.get 3
                      i32.sub
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 11
                              i32.const 2
                              i32.shl
                              i32.const 1524
                              i32.add
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              i32.const 0
                              local.set 8
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 0
                            local.get 3
                            i32.const 0
                            i32.const 25
                            local.get 11
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            local.get 11
                            i32.const 31
                            i32.eq
                            select
                            i32.shl
                            local.set 7
                            i32.const 0
                            local.set 8
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 2
                                local.get 4
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 2
                                local.set 4
                                local.get 5
                                local.set 8
                                local.get 2
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 4
                                local.get 5
                                local.set 8
                                local.get 5
                                local.set 0
                                br 3 (;@11;)
                              end
                              local.get 0
                              local.get 5
                              i32.const 20
                              i32.add
                              i32.load
                              local.tee 2
                              local.get 2
                              local.get 5
                              local.get 7
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.const 16
                              i32.add
                              i32.load
                              local.tee 5
                              i32.eq
                              select
                              local.get 0
                              local.get 2
                              select
                              local.set 0
                              local.get 7
                              i32.const 1
                              i32.shl
                              local.set 7
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 0
                            local.get 8
                            i32.or
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 8
                            i32.const 2
                            local.get 11
                            i32.shl
                            local.tee 0
                            i32.const 0
                            local.get 0
                            i32.sub
                            i32.or
                            local.get 6
                            i32.and
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 0
                            i32.const 0
                            local.get 0
                            i32.sub
                            i32.and
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 1524
                            i32.add
                            i32.load
                            local.set 0
                          end
                          local.get 0
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        loop  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 3
                          i32.sub
                          local.tee 2
                          local.get 4
                          i32.lt_u
                          local.set 7
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=16
                            local.tee 5
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 20
                            i32.add
                            i32.load
                            local.set 5
                          end
                          local.get 2
                          local.get 4
                          local.get 7
                          select
                          local.set 4
                          local.get 0
                          local.get 8
                          local.get 7
                          select
                          local.set 8
                          local.get 5
                          local.set 0
                          local.get 5
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 0
                      i32.load offset=1228
                      local.get 3
                      i32.sub
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 8
                      i32.load offset=24
                      local.set 11
                      block  ;; label = @10
                        local.get 8
                        i32.load offset=12
                        local.tee 7
                        local.get 8
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 8
                        i32.load offset=8
                        local.tee 0
                        i32.const 0
                        i32.load offset=1236
                        i32.lt_u
                        drop
                        local.get 0
                        local.get 7
                        i32.store offset=12
                        local.get 7
                        local.get 0
                        i32.store offset=8
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        local.get 8
                        i32.const 20
                        i32.add
                        local.tee 5
                        i32.load
                        local.tee 0
                        br_if 0 (;@10;)
                        local.get 8
                        i32.load offset=16
                        local.tee 0
                        i32.eqz
                        br_if 3 (;@7;)
                        local.get 8
                        i32.const 16
                        i32.add
                        local.set 5
                      end
                      loop  ;; label = @10
                        local.get 5
                        local.set 2
                        local.get 0
                        local.tee 7
                        i32.const 20
                        i32.add
                        local.tee 5
                        i32.load
                        local.tee 0
                        br_if 0 (;@10;)
                        local.get 7
                        i32.const 16
                        i32.add
                        local.set 5
                        local.get 7
                        i32.load offset=16
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      i32.const 0
                      i32.store
                      br 6 (;@3;)
                    end
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1228
                      local.tee 0
                      local.get 3
                      i32.lt_u
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1240
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          local.get 3
                          i32.sub
                          local.tee 5
                          i32.const 16
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 3
                          i32.add
                          local.tee 7
                          local.get 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 0
                          i32.add
                          local.get 5
                          i32.store
                          local.get 4
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          br 1 (;@10;)
                        end
                        local.get 4
                        local.get 0
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 4
                        local.get 0
                        i32.add
                        local.tee 0
                        local.get 0
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        i32.const 0
                        local.set 7
                        i32.const 0
                        local.set 5
                      end
                      i32.const 0
                      local.get 5
                      i32.store offset=1228
                      i32.const 0
                      local.get 7
                      i32.store offset=1240
                      local.get 4
                      i32.const 8
                      i32.add
                      local.set 0
                      br 8 (;@1;)
                    end
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1232
                      local.tee 7
                      local.get 3
                      i32.le_u
                      br_if 0 (;@9;)
                      i32.const 0
                      local.get 7
                      local.get 3
                      i32.sub
                      local.tee 4
                      i32.store offset=1232
                      i32.const 0
                      i32.const 0
                      i32.load offset=1244
                      local.tee 0
                      local.get 3
                      i32.add
                      local.tee 5
                      i32.store offset=1244
                      local.get 5
                      local.get 4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 0
                      br 8 (;@1;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1692
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1700
                        local.set 4
                        br 1 (;@9;)
                      end
                      i32.const 0
                      i64.const -1
                      i64.store offset=1704 align=4
                      i32.const 0
                      i64.const 17592186048512
                      i64.store offset=1696 align=4
                      i32.const 0
                      local.get 1
                      i32.const 12
                      i32.add
                      i32.const -16
                      i32.and
                      i32.const 1431655768
                      i32.xor
                      i32.store offset=1692
                      i32.const 0
                      i32.const 0
                      i32.store offset=1712
                      i32.const 0
                      i32.const 0
                      i32.store offset=1664
                      i32.const 4096
                      local.set 4
                    end
                    i32.const 0
                    local.set 0
                    local.get 4
                    local.get 3
                    i32.const 47
                    i32.add
                    local.tee 6
                    i32.add
                    local.tee 2
                    i32.const 0
                    local.get 4
                    i32.sub
                    local.tee 11
                    i32.and
                    local.tee 8
                    local.get 3
                    i32.le_u
                    br_if 7 (;@1;)
                    i32.const 0
                    local.set 0
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1660
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1652
                      local.tee 5
                      local.get 8
                      i32.add
                      local.tee 9
                      local.get 5
                      i32.le_u
                      br_if 8 (;@1;)
                      local.get 9
                      local.get 4
                      i32.gt_u
                      br_if 8 (;@1;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load8_u offset=1664
                        i32.const 4
                        i32.and
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1244
                                  local.tee 4
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 1668
                                  local.set 0
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load
                                      local.tee 5
                                      local.get 4
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 5
                                      local.get 0
                                      i32.load offset=4
                                      i32.add
                                      local.get 4
                                      i32.gt_u
                                      br_if 3 (;@14;)
                                    end
                                    local.get 0
                                    i32.load offset=8
                                    local.tee 0
                                    br_if 0 (;@16;)
                                  end
                                end
                                i32.const 0
                                call 16
                                local.tee 7
                                i32.const -1
                                i32.eq
                                br_if 3 (;@11;)
                                local.get 8
                                local.set 2
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1696
                                  local.tee 0
                                  i32.const -1
                                  i32.add
                                  local.tee 4
                                  local.get 7
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 8
                                  local.get 7
                                  i32.sub
                                  local.get 4
                                  local.get 7
                                  i32.add
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.add
                                  local.set 2
                                end
                                local.get 2
                                local.get 3
                                i32.le_u
                                br_if 3 (;@11;)
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1660
                                  local.tee 0
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.load offset=1652
                                  local.tee 4
                                  local.get 2
                                  i32.add
                                  local.tee 5
                                  local.get 4
                                  i32.le_u
                                  br_if 4 (;@11;)
                                  local.get 5
                                  local.get 0
                                  i32.gt_u
                                  br_if 4 (;@11;)
                                end
                                local.get 2
                                call 16
                                local.tee 0
                                local.get 7
                                i32.ne
                                br_if 1 (;@13;)
                                br 5 (;@9;)
                              end
                              local.get 2
                              local.get 7
                              i32.sub
                              local.get 11
                              i32.and
                              local.tee 2
                              call 16
                              local.tee 7
                              local.get 0
                              i32.load
                              local.get 0
                              i32.load offset=4
                              i32.add
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 7
                              local.set 0
                            end
                            local.get 0
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.const 48
                              i32.add
                              local.get 2
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              local.set 7
                              br 4 (;@9;)
                            end
                            local.get 6
                            local.get 2
                            i32.sub
                            i32.const 0
                            i32.load offset=1700
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            call 16
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 4
                            local.get 2
                            i32.add
                            local.set 2
                            local.get 0
                            local.set 7
                            br 3 (;@9;)
                          end
                          local.get 7
                          i32.const -1
                          i32.ne
                          br_if 2 (;@9;)
                        end
                        i32.const 0
                        i32.const 0
                        i32.load offset=1664
                        i32.const 4
                        i32.or
                        i32.store offset=1664
                      end
                      local.get 8
                      call 16
                      local.set 7
                      i32.const 0
                      call 16
                      local.set 0
                      local.get 7
                      i32.const -1
                      i32.eq
                      br_if 5 (;@4;)
                      local.get 0
                      i32.const -1
                      i32.eq
                      br_if 5 (;@4;)
                      local.get 7
                      local.get 0
                      i32.ge_u
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 7
                      i32.sub
                      local.tee 2
                      local.get 3
                      i32.const 40
                      i32.add
                      i32.le_u
                      br_if 5 (;@4;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1652
                    local.get 2
                    i32.add
                    local.tee 0
                    i32.store offset=1652
                    block  ;; label = @9
                      local.get 0
                      i32.const 0
                      i32.load offset=1656
                      i32.le_u
                      br_if 0 (;@9;)
                      i32.const 0
                      local.get 0
                      i32.store offset=1656
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1244
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 1668
                        local.set 0
                        loop  ;; label = @11
                          local.get 7
                          local.get 0
                          i32.load
                          local.tee 5
                          local.get 0
                          i32.load offset=4
                          local.tee 8
                          i32.add
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 0
                          i32.load offset=8
                          local.tee 0
                          br_if 0 (;@11;)
                          br 5 (;@6;)
                        end
                        unreachable
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1236
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 0
                          i32.ge_u
                          br_if 1 (;@10;)
                        end
                        i32.const 0
                        local.get 7
                        i32.store offset=1236
                      end
                      i32.const 0
                      local.set 0
                      i32.const 0
                      local.get 2
                      i32.store offset=1672
                      i32.const 0
                      local.get 7
                      i32.store offset=1668
                      i32.const 0
                      i32.const -1
                      i32.store offset=1252
                      i32.const 0
                      i32.const 0
                      i32.load offset=1692
                      i32.store offset=1256
                      i32.const 0
                      i32.const 0
                      i32.store offset=1680
                      loop  ;; label = @10
                        local.get 0
                        i32.const 3
                        i32.shl
                        local.tee 4
                        i32.const 1268
                        i32.add
                        local.get 4
                        i32.const 1260
                        i32.add
                        local.tee 5
                        i32.store
                        local.get 4
                        i32.const 1272
                        i32.add
                        local.get 5
                        i32.store
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.const 32
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      i32.const 0
                      local.get 2
                      i32.const -40
                      i32.add
                      local.tee 0
                      i32.const -8
                      local.get 7
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 7
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      local.tee 4
                      i32.sub
                      local.tee 5
                      i32.store offset=1232
                      i32.const 0
                      local.get 7
                      local.get 4
                      i32.add
                      local.tee 4
                      i32.store offset=1244
                      local.get 4
                      local.get 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 7
                      local.get 0
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 0
                      i32.const 0
                      i32.load offset=1708
                      i32.store offset=1248
                      br 4 (;@5;)
                    end
                    local.get 0
                    i32.load8_u offset=12
                    i32.const 8
                    i32.and
                    br_if 2 (;@6;)
                    local.get 4
                    local.get 5
                    i32.lt_u
                    br_if 2 (;@6;)
                    local.get 4
                    local.get 7
                    i32.ge_u
                    br_if 2 (;@6;)
                    local.get 0
                    local.get 8
                    local.get 2
                    i32.add
                    i32.store offset=4
                    i32.const 0
                    local.get 4
                    i32.const -8
                    local.get 4
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 0
                    i32.add
                    local.tee 5
                    i32.store offset=1244
                    i32.const 0
                    i32.const 0
                    i32.load offset=1232
                    local.get 2
                    i32.add
                    local.tee 7
                    local.get 0
                    i32.sub
                    local.tee 0
                    i32.store offset=1232
                    local.get 5
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 4
                    local.get 7
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1708
                    i32.store offset=1248
                    br 3 (;@5;)
                  end
                  i32.const 0
                  local.set 8
                  br 5 (;@2;)
                end
                i32.const 0
                local.set 7
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 7
                i32.const 0
                i32.load offset=1236
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=1236
                local.get 7
                local.set 8
              end
              local.get 7
              local.get 2
              i32.add
              local.set 5
              i32.const 1668
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                            unreachable
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1668
                        local.set 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 0
                      local.get 7
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 2
                      i32.add
                      i32.store offset=4
                      local.get 7
                      i32.const -8
                      local.get 7
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 7
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 2
                      local.get 11
                      local.get 3
                      i32.add
                      local.tee 3
                      i32.sub
                      local.set 0
                      block  ;; label = @10
                        local.get 2
                        local.get 4
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=1244
                        i32.const 0
                        i32.const 0
                        i32.load offset=1232
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=1232
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.const 0
                        i32.load offset=1240
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=1240
                        i32.const 0
                        i32.const 0
                        i32.load offset=1228
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=1228
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 2
                            i32.load offset=8
                            local.tee 5
                            local.get 4
                            i32.const 3
                            i32.shr_u
                            local.tee 8
                            i32.const 3
                            i32.shl
                            i32.const 1260
                            i32.add
                            local.tee 7
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=12
                              local.tee 4
                              local.get 5
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1220
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=1220
                              br 2 (;@11;)
                            end
                            local.get 4
                            local.get 7
                            i32.eq
                            drop
                            local.get 5
                            local.get 4
                            i32.store offset=12
                            local.get 4
                            local.get 5
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=12
                              local.tee 7
                              local.get 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 2
                              i32.load offset=8
                              local.tee 4
                              local.get 8
                              i32.lt_u
                              drop
                              local.get 4
                              local.get 7
                              i32.store offset=12
                              local.get 7
                              local.get 4
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 2
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 7
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 5
                              local.tee 7
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 7
                              i32.load offset=16
                              local.tee 5
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              local.get 2
                              i32.load offset=28
                              local.tee 5
                              i32.const 2
                              i32.shl
                              i32.const 1524
                              i32.add
                              local.tee 4
                              i32.load
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 7
                              i32.store
                              local.get 7
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1224
                              i32.const -2
                              local.get 5
                              i32.rotl
                              i32.and
                              i32.store offset=1224
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 2
                            i32.eq
                            select
                            i32.add
                            local.get 7
                            i32.store
                            local.get 7
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 7
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 7
                            i32.store offset=24
                          end
                          local.get 2
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 7
                          i32.store offset=24
                        end
                        local.get 6
                        local.get 0
                        i32.add
                        local.set 0
                        local.get 2
                        local.get 6
                        i32.add
                        local.tee 2
                        i32.load offset=4
                        local.set 4
                      end
                      local.get 2
                      local.get 4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 3
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 3
                      local.get 0
                      i32.add
                      local.get 0
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const -8
                        i32.and
                        i32.const 1260
                        i32.add
                        local.set 4
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1220
                            local.tee 5
                            i32.const 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 0
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 0
                            i32.or
                            i32.store offset=1220
                            local.get 4
                            local.set 0
                            br 1 (;@11;)
                          end
                          local.get 4
                          i32.load offset=8
                          local.set 0
                        end
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        local.get 0
                        local.get 3
                        i32.store offset=12
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 4
                      block  ;; label = @10
                        local.get 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 38
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        i32.clz
                        local.tee 4
                        i32.sub
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 4
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 4
                      end
                      local.get 3
                      local.get 4
                      i32.store offset=28
                      local.get 3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1524
                      i32.add
                      local.set 5
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1224
                          local.tee 7
                          i32.const 1
                          local.get 4
                          i32.shl
                          local.tee 8
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          local.get 8
                          i32.or
                          i32.store offset=1224
                          local.get 5
                          local.get 3
                          i32.store
                          local.get 3
                          local.get 5
                          i32.store offset=24
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 0
                        i32.const 25
                        local.get 4
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 4
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 4
                        local.get 5
                        i32.load
                        local.set 7
                        loop  ;; label = @11
                          local.get 7
                          local.tee 5
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 0
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 4
                          i32.const 29
                          i32.shr_u
                          local.set 7
                          local.get 4
                          i32.const 1
                          i32.shl
                          local.set 4
                          local.get 5
                          local.get 7
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 8
                          i32.load
                          local.tee 7
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 3
                        i32.store
                        local.get 3
                        local.get 5
                        i32.store offset=24
                      end
                      local.get 3
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 3
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.get 2
                    i32.const -40
                    i32.add
                    local.tee 0
                    i32.const -8
                    local.get 7
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 7
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 8
                    i32.sub
                    local.tee 11
                    i32.store offset=1232
                    i32.const 0
                    local.get 7
                    local.get 8
                    i32.add
                    local.tee 8
                    i32.store offset=1244
                    local.get 8
                    local.get 11
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 7
                    local.get 0
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1708
                    i32.store offset=1248
                    local.get 4
                    local.get 5
                    i32.const 39
                    local.get 5
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const -39
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const -47
                    i32.add
                    local.tee 0
                    local.get 0
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 27
                    i32.store offset=4
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1676 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=1668 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=1676
                    i32.const 0
                    local.get 2
                    i32.store offset=1672
                    i32.const 0
                    local.get 7
                    i32.store offset=1668
                    i32.const 0
                    i32.const 0
                    i32.store offset=1680
                    local.get 8
                    i32.const 24
                    i32.add
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 7
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 7
                      local.get 5
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 4
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 7
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 8
                    local.get 7
                    i32.store
                    block  ;; label = @9
                      local.get 7
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const -8
                      i32.and
                      i32.const 1260
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1220
                          local.tee 5
                          i32.const 1
                          local.get 7
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 7
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 5
                          local.get 7
                          i32.or
                          i32.store offset=1220
                          local.get 0
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=8
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    block  ;; label = @9
                      local.get 7
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 38
                      local.get 7
                      i32.const 8
                      i32.shr_u
                      i32.clz
                      local.tee 0
                      i32.sub
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 0
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 0
                    end
                    local.get 4
                    local.get 0
                    i32.store offset=28
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 1524
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1224
                        local.tee 8
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 2
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 8
                        local.get 2
                        i32.or
                        i32.store offset=1224
                        local.get 5
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 5
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 5
                      i32.load
                      local.set 8
                      loop  ;; label = @10
                        local.get 8
                        local.tee 5
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 7
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 8
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 5
                        local.get 8
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 2
                        i32.load
                        local.tee 8
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      local.get 4
                      i32.store
                      local.get 4
                      local.get 5
                      i32.store offset=24
                    end
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.load offset=8
                  local.tee 0
                  local.get 3
                  i32.store offset=12
                  local.get 5
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  i32.const 0
                  i32.store offset=24
                  local.get 3
                  local.get 5
                  i32.store offset=12
                  local.get 3
                  local.get 0
                  i32.store offset=8
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 0
              local.get 4
              i32.store offset=12
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 0
              i32.store offset=24
              local.get 4
              local.get 5
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=1232
            local.tee 0
            local.get 3
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            local.get 3
            i32.sub
            local.tee 4
            i32.store offset=1232
            i32.const 0
            i32.const 0
            i32.load offset=1244
            local.tee 0
            local.get 3
            i32.add
            local.tee 5
            i32.store offset=1244
            local.get 5
            local.get 4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          call 12
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1524
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 7
              i32.store
              local.get 7
              br_if 1 (;@4;)
              i32.const 0
              local.get 6
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 6
              i32.store offset=1224
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 7
            i32.store
            local.get 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 7
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 7
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 7
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 3
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.tee 7
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 7
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const -8
            i32.and
            i32.const 1260
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1220
                local.tee 5
                i32.const 1
                local.get 4
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=1220
                local.get 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
            end
            local.get 0
            local.get 7
            i32.store offset=8
            local.get 4
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 0
            i32.store offset=12
            local.get 7
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 38
            local.get 4
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 0
          end
          local.get 7
          local.get 0
          i32.store offset=28
          local.get 7
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 1524
          i32.add
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.const 1
                local.get 0
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                local.get 3
                i32.or
                i32.store offset=1224
                local.get 5
                local.get 7
                i32.store
                local.get 7
                local.get 5
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 4
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 5
              i32.load
              local.set 3
              loop  ;; label = @6
                local.get 3
                local.tee 5
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 3
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 5
                local.get 3
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 7
              i32.store
              local.get 7
              local.get 5
              i32.store offset=24
            end
            local.get 7
            local.get 7
            i32.store offset=12
            local.get 7
            local.get 7
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 0
          local.get 7
          i32.store offset=12
          local.get 5
          local.get 7
          i32.store offset=8
          local.get 7
          i32.const 0
          i32.store offset=24
          local.get 7
          local.get 5
          i32.store offset=12
          local.get 7
          local.get 0
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 7
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1524
            i32.add
            local.tee 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1224
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 7
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 8
          i32.store offset=24
        end
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 7
        local.get 3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 3
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const -8
          i32.and
          i32.const 1260
          i32.add
          local.set 3
          i32.const 0
          i32.load offset=1240
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 6
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 8
              local.get 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 2
              i32.or
              i32.store offset=1220
              local.get 3
              local.set 8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.set 8
          end
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 8
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=1240
        i32.const 0
        local.get 4
        i32.store offset=1228
      end
      local.get 7
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;18;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1236
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.load offset=1240
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 5
            i32.const 3
            i32.shl
            i32.const 1260
            i32.add
            local.tee 6
            i32.eq
            drop
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1220
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1220
              br 3 (;@2;)
            end
            local.get 2
            local.get 6
            i32.eq
            drop
            local.get 4
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 4
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 6
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 4
              i32.lt_u
              drop
              local.get 2
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 5
              local.get 4
              local.tee 6
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 2
              local.get 6
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1524
              i32.add
              local.tee 2
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1224
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1224
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=1228
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        return
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 0
            i32.load offset=1244
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1244
            i32.const 0
            i32.const 0
            i32.load offset=1232
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1232
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1240
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1228
            i32.const 0
            i32.const 0
            i32.store offset=1240
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 0
            i32.load offset=1240
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1240
            i32.const 0
            i32.const 0
            i32.load offset=1228
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1228
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1260
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1220
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1220
                br 2 (;@4;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 4
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 4
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 6
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=8
                local.tee 2
                i32.const 0
                i32.load offset=1236
                i32.lt_u
                drop
                local.get 2
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1524
                i32.add
                local.tee 2
                i32.load
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1224
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1224
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          i32.const 0
          i32.load offset=1240
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1228
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1260
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1220
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=1220
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1524
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1224
              local.tee 6
              i32.const 1
              local.get 2
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 6
              local.get 3
              i32.or
              i32.store offset=1224
              local.get 4
              local.get 1
              i32.store
              local.get 1
              local.get 4
              i32.store offset=24
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 4
            i32.load
            local.set 6
            loop  ;; label = @5
              local.get 6
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 6
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 6
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 6
              br_if 0 (;@5;)
            end
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 4
            i32.store offset=24
          end
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=1252
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1252
    end)
  (func (;19;) (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 1
    local.get 0
    i32.const 1
    i32.gt_u
    select
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        call 17
        local.tee 0
        br_if 1 (;@1;)
        block  ;; label = @3
          call 23
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call_indirect (type 2)
          br 1 (;@2;)
        end
      end
      call 14
      unreachable
    end
    local.get 0)
  (func (;20;) (type 0) (param i32) (result i32)
    local.get 0
    call 19)
  (func (;21;) (type 1) (param i32)
    local.get 0
    call 18)
  (func (;22;) (type 0) (param i32) (result i32)
    local.get 0
    i32.load)
  (func (;23;) (type 3) (result i32)
    i32.const 1716
    call 22)
  (func (;24;) (type 3) (result i32)
    global.get 0)
  (func (;25;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;26;) (type 0) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (table (;0;) 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 67264))
  (export "memory" (memory 0))
  (export "create_buffer" (func 2))
  (export "free_buffer" (func 3))
  (export "ValidateName" (func 4))
  (export "ValidateCategory" (func 5))
  (export "__indirect_function_table" (table 0))
  (export "_initialize" (func 6))
  (export "__errno_location" (func 12))
  (export "stackSave" (func 24))
  (export "stackRestore" (func 25))
  (export "stackAlloc" (func 26))
  (elem (;0;) (i32.const 1) func 1)
  (data (;0;) (i32.const 1024) "The Product Name is too long.\00There are no Product Categories available.\00The selected Product Category is not valid.\00A Product Category must be selected.\00A Product Name must be provided.\00")
  (data (;1;) (i32.const 1212) "\c0\06\01\00"))
