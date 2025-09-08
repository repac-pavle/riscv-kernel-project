.extern irq_handler

.global irq_handler_wrapper
irq_handler_wrapper:
	add sp, sp, -256
	sd s0, 31*8(sp)
	sd s1, 30*8(sp)
	sd s2, 29*8(sp)
	sd s3, 28*8(sp)
	sd s4, 27*8(sp)
	sd s5, 26*8(sp)
	sd s6, 25*8(sp)
	sd s7, 24*8(sp)
	sd s8, 23*8(sp)
	sd s9, 22*8(sp)
	sd s10, 21*8(sp)
	sd s11, 20*8(sp)
	sd a0, 19*8(sp)
	sd a1, 18*8(sp)
	sd a2, 17*8(sp)
	sd a3, 16*8(sp)
	sd a4, 15*8(sp)
	sd a5, 14*8(sp)
	sd a6, 13*8(sp)
	sd a7, 12*8(sp)
	sd t0, 11*8(sp)
	sd t1, 10*8(sp)
	sd t2, 9*8(sp)
	sd t3, 8*8(sp)
	sd t4, 7*8(sp)
	sd t5, 6*8(sp)
	sd t6, 5*8(sp)
	sd ra, 4*8(sp)
	mv a0, sp

	call irq_handler

.global restore_context_from_stack
restore_context_from_stack:
	ld s0, 31*8(sp)
	ld s1, 30*8(sp)
	ld s2, 29*8(sp)
	ld s3, 28*8(sp)
	ld s4, 27*8(sp)
	ld s5, 26*8(sp)
	ld s6, 25*8(sp)
	ld s7, 24*8(sp)
	ld s8, 23*8(sp)
	ld s9, 22*8(sp)
	ld s10, 21*8(sp)
	ld s11, 20*8(sp)
	ld a0, 19*8(sp)
	ld a1, 18*8(sp)
	ld a2, 17*8(sp)
	ld a3, 16*8(sp)
	ld a4, 15*8(sp)
	ld a5, 14*8(sp)
	ld a6, 13*8(sp)
	ld a7, 12*8(sp)
	ld t0, 11*8(sp)
	ld t1, 10*8(sp)
	ld t2, 9*8(sp)
	ld t3, 8*8(sp)
	ld t4, 7*8(sp)
	ld t5, 6*8(sp)
	ld t6, 5*8(sp)
	ld ra, 4*8(sp)
	add sp, sp, 256
	sret
