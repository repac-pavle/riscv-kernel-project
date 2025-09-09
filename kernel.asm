
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e3013103          	ld	sp,-464(sp) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	470070ef          	jal	ra,8000748c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <pushRegisters>:
.global pushRegisters
.type pushRegisters, @function
pushRegisters:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13 ,14, 15, 16, 17, 18, 19 ,20 ,21 ,22, 23, 24, 25 ,26 ,27 ,28 ,29 ,30, 31
        sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)
    ret
    80001084:	00008067          	ret

0000000080001088 <popRegisters>:
.global popRegisters
.type popRegisters, @function
popRegisters:
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13 ,14, 15, 16, 17, 18, 19 ,20 ,21 ,22, 23, 24, 25 ,26 ,27 ,28 ,29 ,30, 31
        ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    ret
    8000110c:	00008067          	ret

0000000080001110 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13 ,14, 15, 16, 17, 18, 19 ,20 ,21 ,22, 23, 24, 25 ,26 ,27 ,28 ,29 ,30, 31
        sd x\index, \index * 8(sp)
    .endr
    80001114:	00013023          	sd	zero,0(sp)
    80001118:	00113423          	sd	ra,8(sp)
    8000111c:	00213823          	sd	sp,16(sp)
    80001120:	00313c23          	sd	gp,24(sp)
    80001124:	02413023          	sd	tp,32(sp)
    80001128:	02513423          	sd	t0,40(sp)
    8000112c:	02613823          	sd	t1,48(sp)
    80001130:	02713c23          	sd	t2,56(sp)
    80001134:	04813023          	sd	s0,64(sp)
    80001138:	04913423          	sd	s1,72(sp)
    8000113c:	04a13823          	sd	a0,80(sp)
    80001140:	04b13c23          	sd	a1,88(sp)
    80001144:	06c13023          	sd	a2,96(sp)
    80001148:	06d13423          	sd	a3,104(sp)
    8000114c:	06e13823          	sd	a4,112(sp)
    80001150:	06f13c23          	sd	a5,120(sp)
    80001154:	09013023          	sd	a6,128(sp)
    80001158:	09113423          	sd	a7,136(sp)
    8000115c:	09213823          	sd	s2,144(sp)
    80001160:	09313c23          	sd	s3,152(sp)
    80001164:	0b413023          	sd	s4,160(sp)
    80001168:	0b513423          	sd	s5,168(sp)
    8000116c:	0b613823          	sd	s6,176(sp)
    80001170:	0b713c23          	sd	s7,184(sp)
    80001174:	0d813023          	sd	s8,192(sp)
    80001178:	0d913423          	sd	s9,200(sp)
    8000117c:	0da13823          	sd	s10,208(sp)
    80001180:	0db13c23          	sd	s11,216(sp)
    80001184:	0fc13023          	sd	t3,224(sp)
    80001188:	0fd13423          	sd	t4,232(sp)
    8000118c:	0fe13823          	sd	t5,240(sp)
    80001190:	0ff13c23          	sd	t6,248(sp)


    call _ZN5Riscv20handleSupervisorTrapEv
    80001194:	6c8010ef          	jal	ra,8000285c <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13 ,14, 15, 16, 17, 18, 19 ,20 ,21 ,22, 23, 24, 25 ,26 ,27 ,28 ,29 ,30, 31
        ld x\index, \index * 8(sp)
    .endr
    80001198:	00013003          	ld	zero,0(sp)
    8000119c:	00813083          	ld	ra,8(sp)
    800011a0:	01013103          	ld	sp,16(sp)
    800011a4:	01813183          	ld	gp,24(sp)
    800011a8:	02013203          	ld	tp,32(sp)
    800011ac:	02813283          	ld	t0,40(sp)
    800011b0:	03013303          	ld	t1,48(sp)
    800011b4:	03813383          	ld	t2,56(sp)
    800011b8:	04013403          	ld	s0,64(sp)
    800011bc:	04813483          	ld	s1,72(sp)
    800011c0:	05013503          	ld	a0,80(sp)
    800011c4:	05813583          	ld	a1,88(sp)
    800011c8:	06013603          	ld	a2,96(sp)
    800011cc:	06813683          	ld	a3,104(sp)
    800011d0:	07013703          	ld	a4,112(sp)
    800011d4:	07813783          	ld	a5,120(sp)
    800011d8:	08013803          	ld	a6,128(sp)
    800011dc:	08813883          	ld	a7,136(sp)
    800011e0:	09013903          	ld	s2,144(sp)
    800011e4:	09813983          	ld	s3,152(sp)
    800011e8:	0a013a03          	ld	s4,160(sp)
    800011ec:	0a813a83          	ld	s5,168(sp)
    800011f0:	0b013b03          	ld	s6,176(sp)
    800011f4:	0b813b83          	ld	s7,184(sp)
    800011f8:	0c013c03          	ld	s8,192(sp)
    800011fc:	0c813c83          	ld	s9,200(sp)
    80001200:	0d013d03          	ld	s10,208(sp)
    80001204:	0d813d83          	ld	s11,216(sp)
    80001208:	0e013e03          	ld	t3,224(sp)
    8000120c:	0e813e83          	ld	t4,232(sp)
    80001210:	0f013f03          	ld	t5,240(sp)
    80001214:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001218:	10010113          	addi	sp,sp,256
    sret
    8000121c:	10200073          	sret

0000000080001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 - &old->context
    # a1 - &running->context
    sd ra, 0 * 8(a0)
    80001220:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001224:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001228:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000122c:	0085b103          	ld	sp,8(a1)
    80001230:	00008067          	ret

0000000080001234 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001234:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001238:	00b29a63          	bne	t0,a1,8000124c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000123c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001240:	fe029ae3          	bnez	t0,80001234 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001244:	00000513          	li	a0,0
    jr ra                  # Return.
    80001248:	00008067          	ret

000000008000124c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000124c:	00100513          	li	a0,1
    80001250:	00008067          	ret

0000000080001254 <ubsan_abort>:
	0,
};

__attribute__((noreturn)) static void
ubsan_abort(const struct ubsan_source_location *location, const char *violation)
{
    80001254:	fe010113          	addi	sp,sp,-32
    80001258:	00113c23          	sd	ra,24(sp)
    8000125c:	00813823          	sd	s0,16(sp)
    80001260:	00913423          	sd	s1,8(sp)
    80001264:	01213023          	sd	s2,0(sp)
    80001268:	02010413          	addi	s0,sp,32
    8000126c:	00058913          	mv	s2,a1
	if (!location || !location->filename)
    80001270:	08050c63          	beqz	a0,80001308 <ubsan_abort+0xb4>
    80001274:	00050493          	mv	s1,a0
    80001278:	00053783          	ld	a5,0(a0)
    8000127c:	08078c63          	beqz	a5,80001314 <ubsan_abort+0xc0>
		location = &unknown_location;

	// printf("filename = %s; line = %d; column = %d; violation = %s;\n", location->filename, location->line, location->column, violation);

	printString("filename = ");
    80001280:	00009517          	auipc	a0,0x9
    80001284:	da050513          	addi	a0,a0,-608 # 8000a020 <CONSOLE_STATUS+0x10>
    80001288:	00002097          	auipc	ra,0x2
    8000128c:	598080e7          	jalr	1432(ra) # 80003820 <printString>
    printString((char*)location->filename);
    80001290:	0004b503          	ld	a0,0(s1)
    80001294:	00002097          	auipc	ra,0x2
    80001298:	58c080e7          	jalr	1420(ra) # 80003820 <printString>
    printString("; line = ");
    8000129c:	00009517          	auipc	a0,0x9
    800012a0:	d9450513          	addi	a0,a0,-620 # 8000a030 <CONSOLE_STATUS+0x20>
    800012a4:	00002097          	auipc	ra,0x2
    800012a8:	57c080e7          	jalr	1404(ra) # 80003820 <printString>
	printInteger(location->line);
    800012ac:	0084e503          	lwu	a0,8(s1)
    800012b0:	00002097          	auipc	ra,0x2
    800012b4:	5e0080e7          	jalr	1504(ra) # 80003890 <printInteger>
    printString("; column = ");
    800012b8:	00009517          	auipc	a0,0x9
    800012bc:	d8850513          	addi	a0,a0,-632 # 8000a040 <CONSOLE_STATUS+0x30>
    800012c0:	00002097          	auipc	ra,0x2
    800012c4:	560080e7          	jalr	1376(ra) # 80003820 <printString>
    printInteger(location->column);
    800012c8:	00c4e503          	lwu	a0,12(s1)
    800012cc:	00002097          	auipc	ra,0x2
    800012d0:	5c4080e7          	jalr	1476(ra) # 80003890 <printInteger>
    printString("; violation = ");
    800012d4:	00009517          	auipc	a0,0x9
    800012d8:	d7c50513          	addi	a0,a0,-644 # 8000a050 <CONSOLE_STATUS+0x40>
    800012dc:	00002097          	auipc	ra,0x2
    800012e0:	544080e7          	jalr	1348(ra) # 80003820 <printString>
    printString((char*)violation);
    800012e4:	00090513          	mv	a0,s2
    800012e8:	00002097          	auipc	ra,0x2
    800012ec:	538080e7          	jalr	1336(ra) # 80003820 <printString>
    printString(";\n");
    800012f0:	00009517          	auipc	a0,0x9
    800012f4:	d7050513          	addi	a0,a0,-656 # 8000a060 <CONSOLE_STATUS+0x50>
    800012f8:	00002097          	auipc	ra,0x2
    800012fc:	528080e7          	jalr	1320(ra) # 80003820 <printString>


	while (true) {
		__asm__ __volatile__ ("nop;");
    80001300:	00000013          	nop
	while (true) {
    80001304:	ffdff06f          	j	80001300 <ubsan_abort+0xac>
		location = &unknown_location;
    80001308:	00009497          	auipc	s1,0x9
    8000130c:	f6048493          	addi	s1,s1,-160 # 8000a268 <unknown_location>
    80001310:	f71ff06f          	j	80001280 <ubsan_abort+0x2c>
    80001314:	00009497          	auipc	s1,0x9
    80001318:	f5448493          	addi	s1,s1,-172 # 8000a268 <unknown_location>
    8000131c:	f65ff06f          	j	80001280 <ubsan_abort+0x2c>

0000000080001320 <__ubsan_handle_type_mismatch_v1>:
	uintptr_t alignment;
	unsigned char type_check_kind;
};

void __ubsan_handle_type_mismatch_v1(void *data_raw, void *pointer_raw)
{
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00113423          	sd	ra,8(sp)
    80001328:	00813023          	sd	s0,0(sp)
    8000132c:	01010413          	addi	s0,sp,16
	struct ubsan_type_mismatch_v1_data *data =
		(struct ubsan_type_mismatch_v1_data *)data_raw;
	ubsan_value_handle_t pointer = (ubsan_value_handle_t)pointer_raw;
	const char *violation = "type mismatch";
	if (!pointer)
    80001330:	02058263          	beqz	a1,80001354 <__ubsan_handle_type_mismatch_v1+0x34>
		violation = "null pointer access";
	else if (data->alignment && (pointer & (data->alignment - 1)))
    80001334:	01853783          	ld	a5,24(a0)
    80001338:	02078463          	beqz	a5,80001360 <__ubsan_handle_type_mismatch_v1+0x40>
    8000133c:	fff78793          	addi	a5,a5,-1
    80001340:	00b7f5b3          	and	a1,a5,a1
    80001344:	02059663          	bnez	a1,80001370 <__ubsan_handle_type_mismatch_v1+0x50>
	const char *violation = "type mismatch";
    80001348:	00009597          	auipc	a1,0x9
    8000134c:	d5058593          	addi	a1,a1,-688 # 8000a098 <CONSOLE_STATUS+0x88>
    80001350:	0180006f          	j	80001368 <__ubsan_handle_type_mismatch_v1+0x48>
		violation = "null pointer access";
    80001354:	00009597          	auipc	a1,0x9
    80001358:	d2c58593          	addi	a1,a1,-724 # 8000a080 <CONSOLE_STATUS+0x70>
    8000135c:	00c0006f          	j	80001368 <__ubsan_handle_type_mismatch_v1+0x48>
	const char *violation = "type mismatch";
    80001360:	00009597          	auipc	a1,0x9
    80001364:	d3858593          	addi	a1,a1,-712 # 8000a098 <CONSOLE_STATUS+0x88>
		violation = "unaligned access";
	ubsan_abort(&data->location, violation);
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	eec080e7          	jalr	-276(ra) # 80001254 <ubsan_abort>
		violation = "unaligned access";
    80001370:	00009597          	auipc	a1,0x9
    80001374:	cf858593          	addi	a1,a1,-776 # 8000a068 <CONSOLE_STATUS+0x58>
    80001378:	ff1ff06f          	j	80001368 <__ubsan_handle_type_mismatch_v1+0x48>

000000008000137c <__ubsan_handle_type_mismatch_v1_abort>:
}

ABORT_VARIANT_VP_VP(type_mismatch_v1);
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00113423          	sd	ra,8(sp)
    80001384:	00813023          	sd	s0,0(sp)
    80001388:	01010413          	addi	s0,sp,16
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	f94080e7          	jalr	-108(ra) # 80001320 <__ubsan_handle_type_mismatch_v1>

0000000080001394 <__ubsan_handle_pointer_overflow>:
	struct ubsan_type_descriptor *type;
};

void __ubsan_handle_pointer_overflow(void *data_raw, void *lhs_raw,
				     void *rhs_raw)
{
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00113423          	sd	ra,8(sp)
    8000139c:	00813023          	sd	s0,0(sp)
    800013a0:	01010413          	addi	s0,sp,16
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "pointer overflow");
    800013a4:	00009597          	auipc	a1,0x9
    800013a8:	d0458593          	addi	a1,a1,-764 # 8000a0a8 <CONSOLE_STATUS+0x98>
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	ea8080e7          	jalr	-344(ra) # 80001254 <ubsan_abort>

00000000800013b4 <__ubsan_handle_pointer_overflow_abort>:
}

ABORT_VARIANT_VP_VP_VP(pointer_overflow);
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00113423          	sd	ra,8(sp)
    800013bc:	00813023          	sd	s0,0(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	fd0080e7          	jalr	-48(ra) # 80001394 <__ubsan_handle_pointer_overflow>

00000000800013cc <__ubsan_handle_add_overflow>:

void __ubsan_handle_add_overflow(void *data_raw, void *lhs_raw, void *rhs_raw)
{
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00113423          	sd	ra,8(sp)
    800013d4:	00813023          	sd	s0,0(sp)
    800013d8:	01010413          	addi	s0,sp,16
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "addition overflow");
    800013dc:	00009597          	auipc	a1,0x9
    800013e0:	ce458593          	addi	a1,a1,-796 # 8000a0c0 <CONSOLE_STATUS+0xb0>
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	e70080e7          	jalr	-400(ra) # 80001254 <ubsan_abort>

00000000800013ec <__ubsan_handle_add_overflow_abort>:
}

ABORT_VARIANT_VP_VP_VP(add_overflow);
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00113423          	sd	ra,8(sp)
    800013f4:	00813023          	sd	s0,0(sp)
    800013f8:	01010413          	addi	s0,sp,16
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	fd0080e7          	jalr	-48(ra) # 800013cc <__ubsan_handle_add_overflow>

0000000080001404 <__ubsan_handle_sub_overflow>:

void __ubsan_handle_sub_overflow(void *data_raw, void *lhs_raw, void *rhs_raw)
{
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "subtraction overflow");
    80001414:	00009597          	auipc	a1,0x9
    80001418:	cc458593          	addi	a1,a1,-828 # 8000a0d8 <CONSOLE_STATUS+0xc8>
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	e38080e7          	jalr	-456(ra) # 80001254 <ubsan_abort>

0000000080001424 <__ubsan_handle_sub_overflow_abort>:
}

ABORT_VARIANT_VP_VP_VP(sub_overflow);
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00113423          	sd	ra,8(sp)
    8000142c:	00813023          	sd	s0,0(sp)
    80001430:	01010413          	addi	s0,sp,16
    80001434:	00000097          	auipc	ra,0x0
    80001438:	fd0080e7          	jalr	-48(ra) # 80001404 <__ubsan_handle_sub_overflow>

000000008000143c <__ubsan_handle_mul_overflow>:

void __ubsan_handle_mul_overflow(void *data_raw, void *lhs_raw, void *rhs_raw)
{
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00113423          	sd	ra,8(sp)
    80001444:	00813023          	sd	s0,0(sp)
    80001448:	01010413          	addi	s0,sp,16
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "multiplication overflow");
    8000144c:	00009597          	auipc	a1,0x9
    80001450:	ca458593          	addi	a1,a1,-860 # 8000a0f0 <CONSOLE_STATUS+0xe0>
    80001454:	00000097          	auipc	ra,0x0
    80001458:	e00080e7          	jalr	-512(ra) # 80001254 <ubsan_abort>

000000008000145c <__ubsan_handle_mul_overflow_abort>:
}

ABORT_VARIANT_VP_VP_VP(mul_overflow);
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	fd0080e7          	jalr	-48(ra) # 8000143c <__ubsan_handle_mul_overflow>

0000000080001474 <__ubsan_handle_negate_overflow>:

void __ubsan_handle_negate_overflow(void *data_raw, void *old_value_raw)
{
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00113423          	sd	ra,8(sp)
    8000147c:	00813023          	sd	s0,0(sp)
    80001480:	01010413          	addi	s0,sp,16
	struct ubsan_overflow_data *data =
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t old_value = (ubsan_value_handle_t)old_value_raw;
	(void)old_value;
	ubsan_abort(&data->location, "negation overflow");
    80001484:	00009597          	auipc	a1,0x9
    80001488:	c8458593          	addi	a1,a1,-892 # 8000a108 <CONSOLE_STATUS+0xf8>
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	dc8080e7          	jalr	-568(ra) # 80001254 <ubsan_abort>

0000000080001494 <__ubsan_handle_negate_overflow_abort>:
}

ABORT_VARIANT_VP_VP(negate_overflow);
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00113423          	sd	ra,8(sp)
    8000149c:	00813023          	sd	s0,0(sp)
    800014a0:	01010413          	addi	s0,sp,16
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	fd0080e7          	jalr	-48(ra) # 80001474 <__ubsan_handle_negate_overflow>

00000000800014ac <__ubsan_handle_divrem_overflow>:

void __ubsan_handle_divrem_overflow(void *data_raw, void *lhs_raw,
				    void *rhs_raw)
{
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00113423          	sd	ra,8(sp)
    800014b4:	00813023          	sd	s0,0(sp)
    800014b8:	01010413          	addi	s0,sp,16
		(struct ubsan_overflow_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "division remainder overflow");
    800014bc:	00009597          	auipc	a1,0x9
    800014c0:	c6458593          	addi	a1,a1,-924 # 8000a120 <CONSOLE_STATUS+0x110>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	d90080e7          	jalr	-624(ra) # 80001254 <ubsan_abort>

00000000800014cc <__ubsan_handle_divrem_overflow_abort>:
}

ABORT_VARIANT_VP_VP_VP(divrem_overflow);
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	fd0080e7          	jalr	-48(ra) # 800014ac <__ubsan_handle_divrem_overflow>

00000000800014e4 <__ubsan_handle_shift_out_of_bounds>:
	struct ubsan_type_descriptor *rhs_type;
};

void __ubsan_handle_shift_out_of_bounds(void *data_raw, void *lhs_raw,
					void *rhs_raw)
{
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00113423          	sd	ra,8(sp)
    800014ec:	00813023          	sd	s0,0(sp)
    800014f0:	01010413          	addi	s0,sp,16
		(struct ubsan_shift_out_of_bounds_data *)data_raw;
	ubsan_value_handle_t lhs = (ubsan_value_handle_t)lhs_raw;
	ubsan_value_handle_t rhs = (ubsan_value_handle_t)rhs_raw;
	(void)lhs;
	(void)rhs;
	ubsan_abort(&data->location, "shift out of bounds");
    800014f4:	00009597          	auipc	a1,0x9
    800014f8:	c4c58593          	addi	a1,a1,-948 # 8000a140 <CONSOLE_STATUS+0x130>
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	d58080e7          	jalr	-680(ra) # 80001254 <ubsan_abort>

0000000080001504 <__ubsan_handle_shift_out_of_bounds_abort>:
}

ABORT_VARIANT_VP_VP_VP(shift_out_of_bounds);
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00113423          	sd	ra,8(sp)
    8000150c:	00813023          	sd	s0,0(sp)
    80001510:	01010413          	addi	s0,sp,16
    80001514:	00000097          	auipc	ra,0x0
    80001518:	fd0080e7          	jalr	-48(ra) # 800014e4 <__ubsan_handle_shift_out_of_bounds>

000000008000151c <__ubsan_handle_out_of_bounds>:
	struct ubsan_type_descriptor *array_type;
	struct ubsan_type_descriptor *index_type;
};

void __ubsan_handle_out_of_bounds(void *data_raw, void *index_raw)
{
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00113423          	sd	ra,8(sp)
    80001524:	00813023          	sd	s0,0(sp)
    80001528:	01010413          	addi	s0,sp,16
	struct ubsan_out_of_bounds_data *data =
		(struct ubsan_out_of_bounds_data *)data_raw;
	ubsan_value_handle_t index = (ubsan_value_handle_t)index_raw;
	(void)index;
	ubsan_abort(&data->location, "out of bounds");
    8000152c:	00009597          	auipc	a1,0x9
    80001530:	c2c58593          	addi	a1,a1,-980 # 8000a158 <CONSOLE_STATUS+0x148>
    80001534:	00000097          	auipc	ra,0x0
    80001538:	d20080e7          	jalr	-736(ra) # 80001254 <ubsan_abort>

000000008000153c <__ubsan_handle_out_of_bounds_abort>:
}

ABORT_VARIANT_VP_VP(out_of_bounds);
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00113423          	sd	ra,8(sp)
    80001544:	00813023          	sd	s0,0(sp)
    80001548:	01010413          	addi	s0,sp,16
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	fd0080e7          	jalr	-48(ra) # 8000151c <__ubsan_handle_out_of_bounds>

0000000080001554 <__ubsan_handle_builtin_unreachable>:
	struct ubsan_source_location location;
};

__attribute__((noreturn)) void
__ubsan_handle_builtin_unreachable(void *data_raw)
{
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
	struct ubsan_unreachable_data *data =
		(struct ubsan_unreachable_data *)data_raw;
	ubsan_abort(&data->location, "reached unreachable");
    80001564:	00009597          	auipc	a1,0x9
    80001568:	c0458593          	addi	a1,a1,-1020 # 8000a168 <CONSOLE_STATUS+0x158>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	ce8080e7          	jalr	-792(ra) # 80001254 <ubsan_abort>

0000000080001574 <__ubsan_handle_missing_return>:
}

__attribute__((noreturn)) void __ubsan_handle_missing_return(void *data_raw)
{
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00113423          	sd	ra,8(sp)
    8000157c:	00813023          	sd	s0,0(sp)
    80001580:	01010413          	addi	s0,sp,16
	struct ubsan_unreachable_data *data =
		(struct ubsan_unreachable_data *)data_raw;
	ubsan_abort(&data->location, "missing return");
    80001584:	00009597          	auipc	a1,0x9
    80001588:	bfc58593          	addi	a1,a1,-1028 # 8000a180 <CONSOLE_STATUS+0x170>
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	cc8080e7          	jalr	-824(ra) # 80001254 <ubsan_abort>

0000000080001594 <__ubsan_handle_vla_bound_not_positive>:
	struct ubsan_source_location location;
	struct ubsan_type_descriptor *type;
};

void __ubsan_handle_vla_bound_not_positive(void *data_raw, void *bound_raw)
{
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00113423          	sd	ra,8(sp)
    8000159c:	00813023          	sd	s0,0(sp)
    800015a0:	01010413          	addi	s0,sp,16
	struct ubsan_vla_bound_data *data =
		(struct ubsan_vla_bound_data *)data_raw;
	ubsan_value_handle_t bound = (ubsan_value_handle_t)bound_raw;
	(void)bound;
	ubsan_abort(&data->location, "negative variable array length");
    800015a4:	00009597          	auipc	a1,0x9
    800015a8:	bec58593          	addi	a1,a1,-1044 # 8000a190 <CONSOLE_STATUS+0x180>
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	ca8080e7          	jalr	-856(ra) # 80001254 <ubsan_abort>

00000000800015b4 <__ubsan_handle_vla_bound_not_positive_abort>:
}

ABORT_VARIANT_VP_VP(vla_bound_not_positive);
    800015b4:	ff010113          	addi	sp,sp,-16
    800015b8:	00113423          	sd	ra,8(sp)
    800015bc:	00813023          	sd	s0,0(sp)
    800015c0:	01010413          	addi	s0,sp,16
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	fd0080e7          	jalr	-48(ra) # 80001594 <__ubsan_handle_vla_bound_not_positive>

00000000800015cc <__ubsan_handle_float_cast_overflow>:
	struct ubsan_type_descriptor *from_type;
	struct ubsan_type_descriptor *to_type;
};

void __ubsan_handle_float_cast_overflow(void *data_raw, void *from_raw)
{
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00113423          	sd	ra,8(sp)
    800015d4:	00813023          	sd	s0,0(sp)
    800015d8:	01010413          	addi	s0,sp,16
	struct ubsan_float_cast_overflow_data *data =
		(struct ubsan_float_cast_overflow_data *)data_raw;
	ubsan_value_handle_t from = (ubsan_value_handle_t)from_raw;
	(void)from;
#if !(defined(__GNUC__) && __GNUC__ < 6)
	ubsan_abort(&data->location, "float cast overflow");
    800015dc:	00009597          	auipc	a1,0x9
    800015e0:	bd458593          	addi	a1,a1,-1068 # 8000a1b0 <CONSOLE_STATUS+0x1a0>
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	c70080e7          	jalr	-912(ra) # 80001254 <ubsan_abort>

00000000800015ec <__ubsan_handle_float_cast_overflow_abort>:
#else
	ubsan_abort(((void)data, &unknown_location), "float cast overflow");
#endif
}

ABORT_VARIANT_VP_VP(float_cast_overflow);
    800015ec:	ff010113          	addi	sp,sp,-16
    800015f0:	00113423          	sd	ra,8(sp)
    800015f4:	00813023          	sd	s0,0(sp)
    800015f8:	01010413          	addi	s0,sp,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	fd0080e7          	jalr	-48(ra) # 800015cc <__ubsan_handle_float_cast_overflow>

0000000080001604 <__ubsan_handle_load_invalid_value>:
	struct ubsan_source_location location;
	struct ubsan_type_descriptor *type;
};

void __ubsan_handle_load_invalid_value(void *data_raw, void *value_raw)
{
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
	struct ubsan_invalid_value_data *data =
		(struct ubsan_invalid_value_data *)data_raw;
	ubsan_value_handle_t value = (ubsan_value_handle_t)value_raw;
	(void)value;
	ubsan_abort(&data->location, "invalid value load");
    80001614:	00009597          	auipc	a1,0x9
    80001618:	bb458593          	addi	a1,a1,-1100 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	c38080e7          	jalr	-968(ra) # 80001254 <ubsan_abort>

0000000080001624 <__ubsan_handle_load_invalid_value_abort>:
}

ABORT_VARIANT_VP_VP(load_invalid_value);
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00113423          	sd	ra,8(sp)
    8000162c:	00813023          	sd	s0,0(sp)
    80001630:	01010413          	addi	s0,sp,16
    80001634:	00000097          	auipc	ra,0x0
    80001638:	fd0080e7          	jalr	-48(ra) # 80001604 <__ubsan_handle_load_invalid_value>

000000008000163c <__ubsan_handle_function_type_mismatch_v1>:
	struct ubsan_source_location location;
	struct ubsan_type_descriptor *type;
};

void __ubsan_handle_function_type_mismatch_v1(void *data_raw, void *value_raw)
{
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00113423          	sd	ra,8(sp)
    80001644:	00813023          	sd	s0,0(sp)
    80001648:	01010413          	addi	s0,sp,16
	struct ubsan_function_type_mismatch_v1_data *data =
		(struct ubsan_function_type_mismatch_v1_data *)data_raw;
	ubsan_value_handle_t value = (ubsan_value_handle_t)value_raw;
	(void)value;
	ubsan_abort(&data->location, "function type mismatch");
    8000164c:	00009597          	auipc	a1,0x9
    80001650:	b9458593          	addi	a1,a1,-1132 # 8000a1e0 <CONSOLE_STATUS+0x1d0>
    80001654:	00000097          	auipc	ra,0x0
    80001658:	c00080e7          	jalr	-1024(ra) # 80001254 <ubsan_abort>

000000008000165c <__ubsan_handle_function_type_mismatch_v1_abort>:
}

ABORT_VARIANT_VP_VP(function_type_mismatch_v1);
    8000165c:	ff010113          	addi	sp,sp,-16
    80001660:	00113423          	sd	ra,8(sp)
    80001664:	00813023          	sd	s0,0(sp)
    80001668:	01010413          	addi	s0,sp,16
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	fd0080e7          	jalr	-48(ra) # 8000163c <__ubsan_handle_function_type_mismatch_v1>

0000000080001674 <__ubsan_handle_nonnull_return>:
	struct ubsan_source_location location;
	struct ubsan_source_location attr_location;
};

void __ubsan_handle_nonnull_return(void *data_raw)
{
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00113423          	sd	ra,8(sp)
    8000167c:	00813023          	sd	s0,0(sp)
    80001680:	01010413          	addi	s0,sp,16
	struct ubsan_nonnull_return_data *data =
		(struct ubsan_nonnull_return_data *)data_raw;
	ubsan_abort(&data->location, "null return");
    80001684:	00009597          	auipc	a1,0x9
    80001688:	b7458593          	addi	a1,a1,-1164 # 8000a1f8 <CONSOLE_STATUS+0x1e8>
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	bc8080e7          	jalr	-1080(ra) # 80001254 <ubsan_abort>

0000000080001694 <__ubsan_handle_nonnull_return_abort>:
}

ABORT_VARIANT_VP(nonnull_return);
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00113423          	sd	ra,8(sp)
    8000169c:	00813023          	sd	s0,0(sp)
    800016a0:	01010413          	addi	s0,sp,16
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	fd0080e7          	jalr	-48(ra) # 80001674 <__ubsan_handle_nonnull_return>

00000000800016ac <__ubsan_handle_nonnull_arg>:

/* TODO: GCC's libubsan does not have the second parameter, but its builtin
 *       somehow has it and conflict if we don't match it.
 */
void __ubsan_handle_nonnull_arg(void *data_raw, intptr_t index_raw)
{
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00113423          	sd	ra,8(sp)
    800016b4:	00813023          	sd	s0,0(sp)
    800016b8:	01010413          	addi	s0,sp,16
	struct ubsan_nonnull_arg_data *data =
		(struct ubsan_nonnull_arg_data *)data_raw;
	ubsan_value_handle_t index = (ubsan_value_handle_t)index_raw;
	(void)index;
	ubsan_abort(&data->location, "null argument");
    800016bc:	00009597          	auipc	a1,0x9
    800016c0:	b4c58593          	addi	a1,a1,-1204 # 8000a208 <CONSOLE_STATUS+0x1f8>
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	b90080e7          	jalr	-1136(ra) # 80001254 <ubsan_abort>

00000000800016cc <__ubsan_handle_nonnull_arg_abort>:
}

ABORT_VARIANT_VP_IP(nonnull_arg);
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	fd0080e7          	jalr	-48(ra) # 800016ac <__ubsan_handle_nonnull_arg>

00000000800016e4 <__ubsan_handle_cfi_bad_icall>:
	struct ubsan_source_location location;
	struct ubsan_type_descriptor *type;
};

void __ubsan_handle_cfi_bad_icall(void *data_raw, void *value_raw)
{
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00113423          	sd	ra,8(sp)
    800016ec:	00813023          	sd	s0,0(sp)
    800016f0:	01010413          	addi	s0,sp,16
	struct ubsan_cfi_bad_icall_data *data =
		(struct ubsan_cfi_bad_icall_data *)data_raw;
	ubsan_value_handle_t value = (ubsan_value_handle_t)value_raw;
	(void)value;
	ubsan_abort(
    800016f4:	00009597          	auipc	a1,0x9
    800016f8:	b2458593          	addi	a1,a1,-1244 # 8000a218 <CONSOLE_STATUS+0x208>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	b58080e7          	jalr	-1192(ra) # 80001254 <ubsan_abort>

0000000080001704 <__ubsan_handle_cfi_bad_icall_abort>:
		&data->location,
		"control flow integrity check failure during indirect call");
}

ABORT_VARIANT_VP_VP(cfi_bad_icall);
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00113423          	sd	ra,8(sp)
    8000170c:	00813023          	sd	s0,0(sp)
    80001710:	01010413          	addi	s0,sp,16
    80001714:	00000097          	auipc	ra,0x0
    80001718:	fd0080e7          	jalr	-48(ra) # 800016e4 <__ubsan_handle_cfi_bad_icall>

000000008000171c <_Z4callmmmmm>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/memory.hpp"
uint64 call(uint64 code, uint64 arg1, uint64 arg2 , uint64 arg3, uint64 arg4) {
    8000171c:	fe010113          	addi	sp,sp,-32
    80001720:	00813c23          	sd	s0,24(sp)
    80001724:	02010413          	addi	s0,sp,32
    uint64 volatile returnVal;

    __asm__ volatile("mv a4, %0" : : "r"(arg4));
    80001728:	00070713          	mv	a4,a4
    __asm__ volatile("mv a3, %0" : : "r"(arg3));
    8000172c:	00068693          	mv	a3,a3
    __asm__ volatile("mv a2, %0" : : "r"(arg2));
    80001730:	00060613          	mv	a2,a2
    __asm__ volatile("mv a1, %0" : : "r"(arg1));
    80001734:	00058593          	mv	a1,a1
    __asm__ volatile("mv a0, %0" : : "r"(code));
    80001738:	00050513          	mv	a0,a0
    __asm__ volatile("ecall");
    8000173c:	00000073          	ecall

    __asm__ volatile ("mv %[returnVal], a0" : [returnVal] "=r"(returnVal));
    80001740:	00050793          	mv	a5,a0
    80001744:	fef43423          	sd	a5,-24(s0)
   return returnVal;
    80001748:	fe843503          	ld	a0,-24(s0)
}
    8000174c:	01813403          	ld	s0,24(sp)
    80001750:	02010113          	addi	sp,sp,32
    80001754:	00008067          	ret

0000000080001758 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00113423          	sd	ra,8(sp)
    80001760:	00813023          	sd	s0,0(sp)
    80001764:	01010413          	addi	s0,sp,16
    //return __mem_alloc(size);
    if(Riscv::isSupervisor)
    80001768:	0000b797          	auipc	a5,0xb
    8000176c:	6d87b783          	ld	a5,1752(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001770:	0007c783          	lbu	a5,0(a5)
    80001774:	02079a63          	bnez	a5,800017a8 <_Z9mem_allocm+0x50>
        return Memory::mem_alloc(size);

    if (size == 0) return nullptr;
    80001778:	02050e63          	beqz	a0,800017b4 <_Z9mem_allocm+0x5c>
    return (void *) call(0x01, size);
    8000177c:	00000713          	li	a4,0
    80001780:	00000693          	li	a3,0
    80001784:	00000613          	li	a2,0
    80001788:	00050593          	mv	a1,a0
    8000178c:	00100513          	li	a0,1
    80001790:	00000097          	auipc	ra,0x0
    80001794:	f8c080e7          	jalr	-116(ra) # 8000171c <_Z4callmmmmm>
}
    80001798:	00813083          	ld	ra,8(sp)
    8000179c:	00013403          	ld	s0,0(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret
        return Memory::mem_alloc(size);
    800017a8:	00002097          	auipc	ra,0x2
    800017ac:	394080e7          	jalr	916(ra) # 80003b3c <_ZN6Memory9mem_allocEm>
    800017b0:	fe9ff06f          	j	80001798 <_Z9mem_allocm+0x40>
    if (size == 0) return nullptr;
    800017b4:	00000513          	li	a0,0
    800017b8:	fe1ff06f          	j	80001798 <_Z9mem_allocm+0x40>

00000000800017bc <_Z8mem_freePv>:

int mem_free(void *mem) {
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00113423          	sd	ra,8(sp)
    800017c4:	00813023          	sd	s0,0(sp)
    800017c8:	01010413          	addi	s0,sp,16
    //return __mem_free(mem);
    if(Riscv::isSupervisor)
    800017cc:	0000b797          	auipc	a5,0xb
    800017d0:	6747b783          	ld	a5,1652(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    800017d4:	0007c783          	lbu	a5,0(a5)
    800017d8:	00078e63          	beqz	a5,800017f4 <_Z8mem_freePv+0x38>
        return Memory::mem_free(mem);
    800017dc:	00002097          	auipc	ra,0x2
    800017e0:	4cc080e7          	jalr	1228(ra) # 80003ca8 <_ZN6Memory8mem_freeEPv>
    return (int) call(0x02, (uint64) mem);
}
    800017e4:	00813083          	ld	ra,8(sp)
    800017e8:	00013403          	ld	s0,0(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret
    return (int) call(0x02, (uint64) mem);
    800017f4:	00000713          	li	a4,0
    800017f8:	00000693          	li	a3,0
    800017fc:	00000613          	li	a2,0
    80001800:	00050593          	mv	a1,a0
    80001804:	00200513          	li	a0,2
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	f14080e7          	jalr	-236(ra) # 8000171c <_Z4callmmmmm>
    80001810:	0005051b          	sext.w	a0,a0
    80001814:	fd1ff06f          	j	800017e4 <_Z8mem_freePv+0x28>

0000000080001818 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    return (size_t) call(0x03);
    80001828:	00000713          	li	a4,0
    8000182c:	00000693          	li	a3,0
    80001830:	00000613          	li	a2,0
    80001834:	00000593          	li	a1,0
    80001838:	00300513          	li	a0,3
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	ee0080e7          	jalr	-288(ra) # 8000171c <_Z4callmmmmm>
}
    80001844:	00813083          	ld	ra,8(sp)
    80001848:	00013403          	ld	s0,0(sp)
    8000184c:	01010113          	addi	sp,sp,16
    80001850:	00008067          	ret

0000000080001854 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    return (size_t) call(0x04);
    80001864:	00000713          	li	a4,0
    80001868:	00000693          	li	a3,0
    8000186c:	00000613          	li	a2,0
    80001870:	00000593          	li	a1,0
    80001874:	00400513          	li	a0,4
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	ea4080e7          	jalr	-348(ra) # 8000171c <_Z4callmmmmm>
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    80001890:	fd010113          	addi	sp,sp,-48
    80001894:	02113423          	sd	ra,40(sp)
    80001898:	02813023          	sd	s0,32(sp)
    8000189c:	00913c23          	sd	s1,24(sp)
    800018a0:	01213823          	sd	s2,16(sp)
    800018a4:	01313423          	sd	s3,8(sp)
    800018a8:	03010413          	addi	s0,sp,48
    800018ac:	00050913          	mv	s2,a0
    800018b0:	00058493          	mv	s1,a1
    800018b4:	00060993          	mv	s3,a2
    void *stack_space = nullptr;
    if (start_routine) {
    800018b8:	04058663          	beqz	a1,80001904 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        stack_space = mem_alloc(DEFAULT_STACK_SIZE); //mem_alloc(DEFAULT_STACK_SIZE);
    800018bc:	00001537          	lui	a0,0x1
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	e98080e7          	jalr	-360(ra) # 80001758 <_Z9mem_allocm>
    800018c8:	00050713          	mv	a4,a0
    }
    return (int) call(0x11, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    800018cc:	00098693          	mv	a3,s3
    800018d0:	00048613          	mv	a2,s1
    800018d4:	00090593          	mv	a1,s2
    800018d8:	01100513          	li	a0,17
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	e40080e7          	jalr	-448(ra) # 8000171c <_Z4callmmmmm>
}
    800018e4:	0005051b          	sext.w	a0,a0
    800018e8:	02813083          	ld	ra,40(sp)
    800018ec:	02013403          	ld	s0,32(sp)
    800018f0:	01813483          	ld	s1,24(sp)
    800018f4:	01013903          	ld	s2,16(sp)
    800018f8:	00813983          	ld	s3,8(sp)
    800018fc:	03010113          	addi	sp,sp,48
    80001900:	00008067          	ret
    void *stack_space = nullptr;
    80001904:	00000713          	li	a4,0
    80001908:	fc5ff06f          	j	800018cc <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

000000008000190c <_Z11thread_exitv>:

int thread_exit() {
    8000190c:	ff010113          	addi	sp,sp,-16
    80001910:	00113423          	sd	ra,8(sp)
    80001914:	00813023          	sd	s0,0(sp)
    80001918:	01010413          	addi	s0,sp,16
    return (int) call(0x12);
    8000191c:	00000713          	li	a4,0
    80001920:	00000693          	li	a3,0
    80001924:	00000613          	li	a2,0
    80001928:	00000593          	li	a1,0
    8000192c:	01200513          	li	a0,18
    80001930:	00000097          	auipc	ra,0x0
    80001934:	dec080e7          	jalr	-532(ra) # 8000171c <_Z4callmmmmm>
}
    80001938:	0005051b          	sext.w	a0,a0
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
    call(0x13);
    8000195c:	00000713          	li	a4,0
    80001960:	00000693          	li	a3,0
    80001964:	00000613          	li	a2,0
    80001968:	00000593          	li	a1,0
    8000196c:	01300513          	li	a0,19
    80001970:	00000097          	auipc	ra,0x0
    80001974:	dac080e7          	jalr	-596(ra) # 8000171c <_Z4callmmmmm>
}
    80001978:	00813083          	ld	ra,8(sp)
    8000197c:	00013403          	ld	s0,0(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret

0000000080001988 <_Z11getThreadIdv>:

int getThreadId() {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00113423          	sd	ra,8(sp)
    80001990:	00813023          	sd	s0,0(sp)
    80001994:	01010413          	addi	s0,sp,16
   return (int) call(0x14);
    80001998:	00000713          	li	a4,0
    8000199c:	00000693          	li	a3,0
    800019a0:	00000613          	li	a2,0
    800019a4:	00000593          	li	a1,0
    800019a8:	01400513          	li	a0,20
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	d70080e7          	jalr	-656(ra) # 8000171c <_Z4callmmmmm>
}
    800019b4:	0005051b          	sext.w	a0,a0
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
    800019d8:	00050593          	mv	a1,a0
  return (int) call(0x31, time);
    800019dc:	00000713          	li	a4,0
    800019e0:	00000693          	li	a3,0
    800019e4:	00000613          	li	a2,0
    800019e8:	03100513          	li	a0,49
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	d30080e7          	jalr	-720(ra) # 8000171c <_Z4callmmmmm>
}
    800019f4:	0005051b          	sext.w	a0,a0
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret

0000000080001a08 <_Z4getcv>:

char getc() {
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00113423          	sd	ra,8(sp)
    80001a10:	00813023          	sd	s0,0(sp)
    80001a14:	01010413          	addi	s0,sp,16
    uint64 c =  call(0x41);
    80001a18:	00000713          	li	a4,0
    80001a1c:	00000693          	li	a3,0
    80001a20:	00000613          	li	a2,0
    80001a24:	00000593          	li	a1,0
    80001a28:	04100513          	li	a0,65
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	cf0080e7          	jalr	-784(ra) # 8000171c <_Z4callmmmmm>
//    __putc(c);
//    __putc('\n');
    return c;
}
    80001a34:	0ff57513          	andi	a0,a0,255
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_Z4putcc>:

void putc(char c) {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	00050593          	mv	a1,a0
    //__putc(c);
    call(0x42, c);
    80001a5c:	00000713          	li	a4,0
    80001a60:	00000693          	li	a3,0
    80001a64:	00000613          	li	a2,0
    80001a68:	04200513          	li	a0,66
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	cb0080e7          	jalr	-848(ra) # 8000171c <_Z4callmmmmm>


    //return;
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_Z8sem_openPP3semj>:

int sem_open(sem_t* handle, unsigned init) {
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00113423          	sd	ra,8(sp)
    80001a8c:	00813023          	sd	s0,0(sp)
    80001a90:	01010413          	addi	s0,sp,16
    return (int) call(0x21,(uint64) handle, (uint64) init);
    80001a94:	00000713          	li	a4,0
    80001a98:	00000693          	li	a3,0
    80001a9c:	02059613          	slli	a2,a1,0x20
    80001aa0:	02065613          	srli	a2,a2,0x20
    80001aa4:	00050593          	mv	a1,a0
    80001aa8:	02100513          	li	a0,33
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	c70080e7          	jalr	-912(ra) # 8000171c <_Z4callmmmmm>
}
    80001ab4:	0005051b          	sext.w	a0,a0
    80001ab8:	00813083          	ld	ra,8(sp)
    80001abc:	00013403          	ld	s0,0(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_Z9sem_closeP3sem>:

int sem_close(sem_t handle) {
    80001ac8:	ff010113          	addi	sp,sp,-16
    80001acc:	00113423          	sd	ra,8(sp)
    80001ad0:	00813023          	sd	s0,0(sp)
    80001ad4:	01010413          	addi	s0,sp,16
    80001ad8:	00050593          	mv	a1,a0
    return (int) call(0x22, (uint64) handle);
    80001adc:	00000713          	li	a4,0
    80001ae0:	00000693          	li	a3,0
    80001ae4:	00000613          	li	a2,0
    80001ae8:	02200513          	li	a0,34
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	c30080e7          	jalr	-976(ra) # 8000171c <_Z4callmmmmm>
}
    80001af4:	0005051b          	sext.w	a0,a0
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_Z8sem_waitP3sem>:


int sem_wait(sem_t id) {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	00050593          	mv	a1,a0
    return (int) (call(0x23, (uint64) id));
    80001b1c:	00000713          	li	a4,0
    80001b20:	00000693          	li	a3,0
    80001b24:	00000613          	li	a2,0
    80001b28:	02300513          	li	a0,35
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	bf0080e7          	jalr	-1040(ra) # 8000171c <_Z4callmmmmm>
}
    80001b34:	0005051b          	sext.w	a0,a0
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_Z10sem_signalP3sem>:

int sem_signal(sem_t id) {
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00113423          	sd	ra,8(sp)
    80001b50:	00813023          	sd	s0,0(sp)
    80001b54:	01010413          	addi	s0,sp,16
    80001b58:	00050593          	mv	a1,a0
    return (int) (call(0x24, (uint64) id));
    80001b5c:	00000713          	li	a4,0
    80001b60:	00000693          	li	a3,0
    80001b64:	00000613          	li	a2,0
    80001b68:	02400513          	li	a0,36
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	bb0080e7          	jalr	-1104(ra) # 8000171c <_Z4callmmmmm>
}
    80001b74:	0005051b          	sext.w	a0,a0
    80001b78:	00813083          	ld	ra,8(sp)
    80001b7c:	00013403          	ld	s0,0(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_Z13sem_timedwaitP3semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    80001b98:	00058613          	mv	a2,a1
    return (int) (call(0x25, (uint64) id, (uint64) timeout));
    80001b9c:	00000713          	li	a4,0
    80001ba0:	00000693          	li	a3,0
    80001ba4:	00050593          	mv	a1,a0
    80001ba8:	02500513          	li	a0,37
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	b70080e7          	jalr	-1168(ra) # 8000171c <_Z4callmmmmm>
}
    80001bb4:	0005051b          	sext.w	a0,a0
    80001bb8:	00813083          	ld	ra,8(sp)
    80001bbc:	00013403          	ld	s0,0(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <_Z11sem_trywaitP3semm>:

int sem_trywait(sem_t id, time_t timeout) {
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    80001bd8:	00050593          	mv	a1,a0
    return (int) (call(0x26, (uint64) id));
    80001bdc:	00000713          	li	a4,0
    80001be0:	00000693          	li	a3,0
    80001be4:	00000613          	li	a2,0
    80001be8:	02600513          	li	a0,38
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	b30080e7          	jalr	-1232(ra) # 8000171c <_Z4callmmmmm>
    80001bf4:	0005051b          	sext.w	a0,a0
    80001bf8:	00813083          	ld	ra,8(sp)
    80001bfc:	00013403          	ld	s0,0(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_Z11workerBodyAv>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/TCB.hpp"

void workerBodyA() {
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	02010413          	addi	s0,sp,32
    for(int i = 0; i <= 50; i++) {
    80001c1c:	00000493          	li	s1,0
    80001c20:	0200006f          	j	80001c40 <_Z11workerBodyAv+0x38>
        printString("A: ");
        printInteger(i);
        printString("\n");
        if(i % 10 == 0) {
            printString("A: yield\n");
    80001c24:	00008517          	auipc	a0,0x8
    80001c28:	65c50513          	addi	a0,a0,1628 # 8000a280 <unknown_location+0x18>
    80001c2c:	00002097          	auipc	ra,0x2
    80001c30:	bf4080e7          	jalr	-1036(ra) # 80003820 <printString>
            TCB::yield();
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	09c080e7          	jalr	156(ra) # 80002cd0 <_ZN3TCB5yieldEv>
    for(int i = 0; i <= 50; i++) {
    80001c3c:	0014849b          	addiw	s1,s1,1
    80001c40:	03200793          	li	a5,50
    80001c44:	0497c063          	blt	a5,s1,80001c84 <_Z11workerBodyAv+0x7c>
        printString("A: ");
    80001c48:	00008517          	auipc	a0,0x8
    80001c4c:	63050513          	addi	a0,a0,1584 # 8000a278 <unknown_location+0x10>
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	bd0080e7          	jalr	-1072(ra) # 80003820 <printString>
        printInteger(i);
    80001c58:	00048513          	mv	a0,s1
    80001c5c:	00002097          	auipc	ra,0x2
    80001c60:	c34080e7          	jalr	-972(ra) # 80003890 <printInteger>
        printString("\n");
    80001c64:	00009517          	auipc	a0,0x9
    80001c68:	b4c50513          	addi	a0,a0,-1204 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80001c6c:	00002097          	auipc	ra,0x2
    80001c70:	bb4080e7          	jalr	-1100(ra) # 80003820 <printString>
        if(i % 10 == 0) {
    80001c74:	00a00793          	li	a5,10
    80001c78:	02f4e7bb          	remw	a5,s1,a5
    80001c7c:	fc0790e3          	bnez	a5,80001c3c <_Z11workerBodyAv+0x34>
    80001c80:	fa5ff06f          	j	80001c24 <_Z11workerBodyAv+0x1c>
        }
    }
    TCB::running->setFinished(true);
    80001c84:	0000b797          	auipc	a5,0xb
    80001c88:	1b47b783          	ld	a5,436(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c8c:	0007b783          	ld	a5,0(a5)
    bool isBlocked() const {
        return blocked;
    }

    void setFinished(bool finished) {
        TCB::finished = finished;
    80001c90:	00100713          	li	a4,1
    80001c94:	04e78823          	sb	a4,80(a5)

}
    80001c98:	01813083          	ld	ra,24(sp)
    80001c9c:	01013403          	ld	s0,16(sp)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret

0000000080001cac <_Z11workerBodyBv>:

void workerBodyB() {
    80001cac:	fe010113          	addi	sp,sp,-32
    80001cb0:	00113c23          	sd	ra,24(sp)
    80001cb4:	00813823          	sd	s0,16(sp)
    80001cb8:	00913423          	sd	s1,8(sp)
    80001cbc:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 50; i++) {
    80001cc0:	00000493          	li	s1,0
    80001cc4:	0200006f          	j	80001ce4 <_Z11workerBodyBv+0x38>
        printString("B: ");
        printInteger(i);
        printString("\n");
        if(i % 25 == 0) {
            printString("A: yield\n");
    80001cc8:	00008517          	auipc	a0,0x8
    80001ccc:	5b850513          	addi	a0,a0,1464 # 8000a280 <unknown_location+0x18>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	b50080e7          	jalr	-1200(ra) # 80003820 <printString>
            TCB::yield();
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	ff8080e7          	jalr	-8(ra) # 80002cd0 <_ZN3TCB5yieldEv>
    for(int i = 0; i < 50; i++) {
    80001ce0:	0014849b          	addiw	s1,s1,1
    80001ce4:	03100793          	li	a5,49
    80001ce8:	0497c063          	blt	a5,s1,80001d28 <_Z11workerBodyBv+0x7c>
        printString("B: ");
    80001cec:	00008517          	auipc	a0,0x8
    80001cf0:	5a450513          	addi	a0,a0,1444 # 8000a290 <unknown_location+0x28>
    80001cf4:	00002097          	auipc	ra,0x2
    80001cf8:	b2c080e7          	jalr	-1236(ra) # 80003820 <printString>
        printInteger(i);
    80001cfc:	00048513          	mv	a0,s1
    80001d00:	00002097          	auipc	ra,0x2
    80001d04:	b90080e7          	jalr	-1136(ra) # 80003890 <printInteger>
        printString("\n");
    80001d08:	00009517          	auipc	a0,0x9
    80001d0c:	aa850513          	addi	a0,a0,-1368 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	b10080e7          	jalr	-1264(ra) # 80003820 <printString>
        if(i % 25 == 0) {
    80001d18:	01900793          	li	a5,25
    80001d1c:	02f4e7bb          	remw	a5,s1,a5
    80001d20:	fc0790e3          	bnez	a5,80001ce0 <_Z11workerBodyBv+0x34>
    80001d24:	fa5ff06f          	j	80001cc8 <_Z11workerBodyBv+0x1c>
        }
    }
    TCB::running->setFinished(true);
    80001d28:	0000b797          	auipc	a5,0xb
    80001d2c:	1107b783          	ld	a5,272(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d30:	0007b783          	ld	a5,0(a5)
    80001d34:	00100713          	li	a4,1
    80001d38:	04e78823          	sb	a4,80(a5)
    80001d3c:	01813083          	ld	ra,24(sp)
    80001d40:	01013403          	ld	s0,16(sp)
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	02010113          	addi	sp,sp,32
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN3sem5blockEv>:
#include "../h/semaphore.hpp"
#include "../h/print.hpp"
#include "../h/TCB.hpp"


void sem::block() {
    80001d50:	fe010113          	addi	sp,sp,-32
    80001d54:	00113c23          	sd	ra,24(sp)
    80001d58:	00813823          	sd	s0,16(sp)
    80001d5c:	00913423          	sd	s1,8(sp)
    80001d60:	01213023          	sd	s2,0(sp)
    80001d64:	02010413          	addi	s0,sp,32
    80001d68:	00050493          	mv	s1,a0
    counter++;
    80001d6c:	01052783          	lw	a5,16(a0)
    80001d70:	0017879b          	addiw	a5,a5,1
    80001d74:	00f52823          	sw	a5,16(a0)
    TCB::running->setBlocked(true);
    80001d78:	0000b797          	auipc	a5,0xb
    80001d7c:	0c07b783          	ld	a5,192(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d80:	0007b903          	ld	s2,0(a5)
    }

    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    80001d84:	00100793          	li	a5,1
    80001d88:	04f908a3          	sb	a5,81(s2)
        if(!tail)
            tail = head;
    }

    void addLast(T *data) {
        Elem *elem = new Elem(data, 0);
    80001d8c:	01000513          	li	a0,16
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	4f8080e7          	jalr	1272(ra) # 80002288 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001d98:	01253023          	sd	s2,0(a0)
    80001d9c:	00053423          	sd	zero,8(a0)

        if(tail) {
    80001da0:	0204b783          	ld	a5,32(s1)
    80001da4:	02078663          	beqz	a5,80001dd0 <_ZN3sem5blockEv+0x80>
            tail->next = elem;
    80001da8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001dac:	02a4b023          	sd	a0,32(s1)
    blocked.addLast(TCB::running);
    TCB::dispatch();
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	fa8080e7          	jalr	-88(ra) # 80002d58 <_ZN3TCB8dispatchEv>
//    printString("///////////////////\n");
//    Scheduler::printAllThreads();
}
    80001db8:	01813083          	ld	ra,24(sp)
    80001dbc:	01013403          	ld	s0,16(sp)
    80001dc0:	00813483          	ld	s1,8(sp)
    80001dc4:	00013903          	ld	s2,0(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret
        } else {
            head = tail = elem;
    80001dd0:	02a4b023          	sd	a0,32(s1)
    80001dd4:	00a4bc23          	sd	a0,24(s1)
    80001dd8:	fd9ff06f          	j	80001db0 <_ZN3sem5blockEv+0x60>

0000000080001ddc <_ZN3sem7unblockEv>:

void sem::unblock(){
    80001ddc:	fe010113          	addi	sp,sp,-32
    80001de0:	00113c23          	sd	ra,24(sp)
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	02010413          	addi	s0,sp,32
    80001df0:	00050793          	mv	a5,a0
    counter--;
    80001df4:	01052703          	lw	a4,16(a0)
    80001df8:	fff7071b          	addiw	a4,a4,-1
    80001dfc:	00e52823          	sw	a4,16(a0)
        }
    }

    T *removeFirst() {
        if(!head)
    80001e00:	01853503          	ld	a0,24(a0)
    80001e04:	04050663          	beqz	a0,80001e50 <_ZN3sem7unblockEv+0x74>
            return 0;

        Elem *elem = head;
        head = head->next;
    80001e08:	00853703          	ld	a4,8(a0)
    80001e0c:	00e7bc23          	sd	a4,24(a5)
        if(!head)
    80001e10:	02070c63          	beqz	a4,80001e48 <_ZN3sem7unblockEv+0x6c>
            tail = 0;

        T *ret = elem->data;
    80001e14:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	4c0080e7          	jalr	1216(ra) # 800022d8 <_ZdlPv>
    TCB* newThread = blocked.removeFirst();
    if(newThread == nullptr) {
    80001e20:	02048863          	beqz	s1,80001e50 <_ZN3sem7unblockEv+0x74>
    80001e24:	040488a3          	sb	zero,81(s1)
        printString("Nema blokiranih threadova...");
        return;
    }

    newThread->setBlocked(false);
    Scheduler::put(newThread);
    80001e28:	00048513          	mv	a0,s1
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	35c080e7          	jalr	860(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
//    printString("///////////////////\n");
//    Scheduler::printAllThreads();

}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
            tail = 0;
    80001e48:	0207b023          	sd	zero,32(a5)
    80001e4c:	fc9ff06f          	j	80001e14 <_ZN3sem7unblockEv+0x38>
        printString("Nema blokiranih threadova...");
    80001e50:	00008517          	auipc	a0,0x8
    80001e54:	44850513          	addi	a0,a0,1096 # 8000a298 <unknown_location+0x30>
    80001e58:	00002097          	auipc	ra,0x2
    80001e5c:	9c8080e7          	jalr	-1592(ra) # 80003820 <printString>
        return;
    80001e60:	fd5ff06f          	j	80001e34 <_ZN3sem7unblockEv+0x58>

0000000080001e64 <_ZN3sem4waitEv>:

int sem::wait() {
    value -= 1;
    80001e64:	00852783          	lw	a5,8(a0)
    80001e68:	fff7879b          	addiw	a5,a5,-1
    80001e6c:	00f52423          	sw	a5,8(a0)
    if(value < 0) block();
    80001e70:	00852783          	lw	a5,8(a0)
    80001e74:	02079713          	slli	a4,a5,0x20
    80001e78:	00074663          	bltz	a4,80001e84 <_ZN3sem4waitEv+0x20>
    return 0;
}
    80001e7c:	00000513          	li	a0,0
    80001e80:	00008067          	ret
int sem::wait() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    if(value < 0) block();
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	ebc080e7          	jalr	-324(ra) # 80001d50 <_ZN3sem5blockEv>
}
    80001e9c:	00000513          	li	a0,0
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN3sem6signalEb>:

int sem::signal(bool miki) {
    value += 1;
    80001eb0:	00852783          	lw	a5,8(a0)
    80001eb4:	0017879b          	addiw	a5,a5,1
    80001eb8:	00f52423          	sw	a5,8(a0)
    if(value <= 0)  {
    80001ebc:	00852783          	lw	a5,8(a0)
    80001ec0:	0007879b          	sext.w	a5,a5
    80001ec4:	00f05663          	blez	a5,80001ed0 <_ZN3sem6signalEb+0x20>
        if (miki)
            TCB::dispatch();
    }

    return 0;
}
    80001ec8:	00000513          	li	a0,0
    80001ecc:	00008067          	ret
int sem::signal(bool miki) {
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	00913423          	sd	s1,8(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00058493          	mv	s1,a1
        unblock();
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	ef4080e7          	jalr	-268(ra) # 80001ddc <_ZN3sem7unblockEv>
        if (miki)
    80001ef0:	00049e63          	bnez	s1,80001f0c <_ZN3sem6signalEb+0x5c>
}
    80001ef4:	00000513          	li	a0,0
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret
            TCB::dispatch();
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	e4c080e7          	jalr	-436(ra) # 80002d58 <_ZN3TCB8dispatchEv>
    80001f14:	fe1ff06f          	j	80001ef4 <_ZN3sem6signalEb+0x44>

0000000080001f18 <_ZN3sem5closeEv>:

int sem::close() {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	01213023          	sd	s2,0(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050493          	mv	s1,a0
    //printString("jebeni closed\n");

//    if (closed)
//        return -2; //sem closed
    closed = true;
    80001f34:	00100793          	li	a5,1
    80001f38:	00f50623          	sb	a5,12(a0)
    80001f3c:	0200006f          	j	80001f5c <_ZN3sem5closeEv+0x44>
    80001f40:	0204b023          	sd	zero,32(s1)
        T *ret = elem->data;
    80001f44:	00053903          	ld	s2,0(a0)
        delete elem;
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	390080e7          	jalr	912(ra) # 800022d8 <_ZdlPv>
    while(blocked.peekFirst()) {
        TCB* thread = blocked.removeFirst();
        Scheduler::put(thread);
    80001f50:	00090513          	mv	a0,s2
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	234080e7          	jalr	564(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst() {
        if(!head)
    80001f5c:	0184b503          	ld	a0,24(s1)
    80001f60:	00050e63          	beqz	a0,80001f7c <_ZN3sem5closeEv+0x64>
            return 0;
        return head->data;
    80001f64:	00053783          	ld	a5,0(a0)
    while(blocked.peekFirst()) {
    80001f68:	00078a63          	beqz	a5,80001f7c <_ZN3sem5closeEv+0x64>
        head = head->next;
    80001f6c:	00853783          	ld	a5,8(a0)
    80001f70:	00f4bc23          	sd	a5,24(s1)
        if(!head)
    80001f74:	fc0798e3          	bnez	a5,80001f44 <_ZN3sem5closeEv+0x2c>
    80001f78:	fc9ff06f          	j	80001f40 <_ZN3sem5closeEv+0x28>
    }
    TCB::dispatch();
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	ddc080e7          	jalr	-548(ra) # 80002d58 <_ZN3TCB8dispatchEv>
    return 0;
}
    80001f84:	00000513          	li	a0,0
    80001f88:	01813083          	ld	ra,24(sp)
    80001f8c:	01013403          	ld	s0,16(sp)
    80001f90:	00813483          	ld	s1,8(sp)
    80001f94:	00013903          	ld	s2,0(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN3semD1Ev>:

sem::~sem(){
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	00813023          	sd	s0,0(sp)
    80001fac:	01010413          	addi	s0,sp,16
    close();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	f68080e7          	jalr	-152(ra) # 80001f18 <_ZN3sem5closeEv>
}
    80001fb8:	00813083          	ld	ra,8(sp)
    80001fbc:	00013403          	ld	s0,0(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_Z5printv>:

extern void userMain();

void print() {
    while (true) {
        if(*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80001fc8:	0000b797          	auipc	a5,0xb
    80001fcc:	e407b783          	ld	a5,-448(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	0007c783          	lbu	a5,0(a5)
    80001fd8:	0207f793          	andi	a5,a5,32
    80001fdc:	fe0786e3          	beqz	a5,80001fc8 <_Z5printv>
void print() {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
            char c = Console::outputGet();
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	264080e7          	jalr	612(ra) # 80002254 <_ZN7Console9outputGetEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80001ff8:	0000b797          	auipc	a5,0xb
    80001ffc:	e307b783          	ld	a5,-464(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002000:	0007b783          	ld	a5,0(a5)
    80002004:	00a78023          	sb	a0,0(a5)
        if(*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002008:	0000b797          	auipc	a5,0xb
    8000200c:	e007b783          	ld	a5,-512(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002010:	0007b783          	ld	a5,0(a5)
    80002014:	0007c783          	lbu	a5,0(a5)
    80002018:	0207f793          	andi	a5,a5,32
    8000201c:	fe0786e3          	beqz	a5,80002008 <_Z5printv+0x40>
    80002020:	fd1ff06f          	j	80001ff0 <_Z5printv+0x28>

0000000080002024 <main>:
            //__putc(c);
        }
    }
}

int main() {
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	01213023          	sd	s2,0(sp)
    80002038:	02010413          	addi	s0,sp,32
    Memory();
    Memory::init();
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	a64080e7          	jalr	-1436(ra) # 80003aa0 <_ZN6Memory4initEv>
    Riscv::isSupervisor = true;
    80002044:	0000b797          	auipc	a5,0xb
    80002048:	dfc7b783          	ld	a5,-516(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000204c:	00100713          	li	a4,1
    80002050:	00e78023          	sb	a4,0(a5)
    TCB* mainthread = TCB::createKernelThread(nullptr);
    80002054:	00000513          	li	a0,0
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	f8c080e7          	jalr	-116(ra) # 80002fe4 <_ZN3TCB18createKernelThreadEPFvvE>
    80002060:	00050913          	mv	s2,a0
    TCB::running = mainthread;
    80002064:	0000b797          	auipc	a5,0xb
    80002068:	dd47b783          	ld	a5,-556(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000206c:	00a7b023          	sd	a0,0(a5)
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002070:	0000b797          	auipc	a5,0xb
    80002074:	da87b783          	ld	a5,-600(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile ("csrr %[stvec],stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002078:	10579073          	csrw	stvec,a5
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000207c:	00200793          	li	a5,2
    80002080:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    Console();
//    TCB::createThread(print);
    TCB* mymain = TCB::createThread(userMain);
    80002084:	0000b517          	auipc	a0,0xb
    80002088:	d7c53503          	ld	a0,-644(a0) # 8000ce00 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	e68080e7          	jalr	-408(ra) # 80002ef4 <_ZN3TCB12createThreadEPFvvE>
    80002094:	00050493          	mv	s1,a0
        return finished;
    80002098:	0504c783          	lbu	a5,80(s1)

    while(!mymain->isFinished()){
    8000209c:	00079863          	bnez	a5,800020ac <main+0x88>
        thread_dispatch();
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	8ac080e7          	jalr	-1876(ra) # 8000194c <_Z15thread_dispatchv>
    while(!mymain->isFinished()){
    800020a8:	ff1ff06f          	j	80002098 <main+0x74>
    }
    delete mymain;
    800020ac:	02048063          	beqz	s1,800020cc <main+0xa8>
        delete[] stack;
    800020b0:	0384b503          	ld	a0,56(s1)
    800020b4:	00050663          	beqz	a0,800020c0 <main+0x9c>
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	248080e7          	jalr	584(ra) # 80002300 <_ZdaPv>
    800020c0:	00048513          	mv	a0,s1
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	214080e7          	jalr	532(ra) # 800022d8 <_ZdlPv>
    delete mainthread;
    800020cc:	02090063          	beqz	s2,800020ec <main+0xc8>
    800020d0:	03893503          	ld	a0,56(s2)
    800020d4:	00050663          	beqz	a0,800020e0 <main+0xbc>
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	228080e7          	jalr	552(ra) # 80002300 <_ZdaPv>
    800020e0:	00090513          	mv	a0,s2
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	1f4080e7          	jalr	500(ra) # 800022d8 <_ZdlPv>
    return 0;
    800020ec:	00000513          	li	a0,0
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	00013903          	ld	s2,0(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00008067          	ret

0000000080002108 <_ZN7ConsoleC1Ev>:
Buffy* Console::input = nullptr;
Buffy* Console::output = nullptr;



Console::Console() {
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00113c23          	sd	ra,24(sp)
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	01213023          	sd	s2,0(sp)
    8000211c:	02010413          	addi	s0,sp,32
    Console::input = new Buffy(1024);
    80002120:	03800513          	li	a0,56
    80002124:	00000097          	auipc	ra,0x0
    80002128:	164080e7          	jalr	356(ra) # 80002288 <_Znwm>
    8000212c:	00050493          	mv	s1,a0
    80002130:	40000593          	li	a1,1024
    80002134:	00001097          	auipc	ra,0x1
    80002138:	430080e7          	jalr	1072(ra) # 80003564 <_ZN5BuffyC1Ei>
    8000213c:	0000b797          	auipc	a5,0xb
    80002140:	d697b223          	sd	s1,-668(a5) # 8000cea0 <_ZN7Console5inputE>
    Console::output = new Buffy(1024);
    80002144:	03800513          	li	a0,56
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	140080e7          	jalr	320(ra) # 80002288 <_Znwm>
    80002150:	00050493          	mv	s1,a0
    80002154:	40000593          	li	a1,1024
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	40c080e7          	jalr	1036(ra) # 80003564 <_ZN5BuffyC1Ei>
    80002160:	0000b797          	auipc	a5,0xb
    80002164:	d497b423          	sd	s1,-696(a5) # 8000cea8 <_ZN7Console6outputE>
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	00013903          	ld	s2,0(sp)
    80002178:	02010113          	addi	sp,sp,32
    8000217c:	00008067          	ret
    80002180:	00050913          	mv	s2,a0
    Console::input = new Buffy(1024);
    80002184:	00048513          	mv	a0,s1
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	150080e7          	jalr	336(ra) # 800022d8 <_ZdlPv>
    80002190:	00090513          	mv	a0,s2
    80002194:	0000c097          	auipc	ra,0xc
    80002198:	e94080e7          	jalr	-364(ra) # 8000e028 <_Unwind_Resume>
    8000219c:	00050913          	mv	s2,a0
    Console::output = new Buffy(1024);
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	134080e7          	jalr	308(ra) # 800022d8 <_ZdlPv>
    800021ac:	00090513          	mv	a0,s2
    800021b0:	0000c097          	auipc	ra,0xc
    800021b4:	e78080e7          	jalr	-392(ra) # 8000e028 <_Unwind_Resume>

00000000800021b8 <_ZN7Console8inputGetEv>:
char Console::inputGet() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00113423          	sd	ra,8(sp)
    800021c0:	00813023          	sd	s0,0(sp)
    800021c4:	01010413          	addi	s0,sp,16
    return input->get();
    800021c8:	0000b517          	auipc	a0,0xb
    800021cc:	cd853503          	ld	a0,-808(a0) # 8000cea0 <_ZN7Console5inputE>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	52c080e7          	jalr	1324(ra) # 800036fc <_ZN5Buffy3getEv>
}
    800021d8:	0ff57513          	andi	a0,a0,255
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN7Console8inputPutEc>:

void Console::inputPut(char c) {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	00050593          	mv	a1,a0
    input->put(c);
    80002200:	0000b517          	auipc	a0,0xb
    80002204:	ca053503          	ld	a0,-864(a0) # 8000cea0 <_ZN7Console5inputE>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	45c080e7          	jalr	1116(ra) # 80003664 <_ZN5Buffy3putEi>
}
    80002210:	00813083          	ld	ra,8(sp)
    80002214:	00013403          	ld	s0,0(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN7Console9outputPutEc>:

void Console::outputPut(char c) {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	00050593          	mv	a1,a0
    output->put(c);
    80002234:	0000b517          	auipc	a0,0xb
    80002238:	c7453503          	ld	a0,-908(a0) # 8000cea8 <_ZN7Console6outputE>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	428080e7          	jalr	1064(ra) # 80003664 <_ZN5Buffy3putEi>
}
    80002244:	00813083          	ld	ra,8(sp)
    80002248:	00013403          	ld	s0,0(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN7Console9outputGetEv>:

char Console::outputGet() {
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    return output->get();
    80002264:	0000b517          	auipc	a0,0xb
    80002268:	c4453503          	ld	a0,-956(a0) # 8000cea8 <_ZN7Console6outputE>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	490080e7          	jalr	1168(ra) # 800036fc <_ZN5Buffy3getEv>
}
    80002274:	0ff57513          	andi	a0,a0,255
    80002278:	00813083          	ld	ra,8(sp)
    8000227c:	00013403          	ld	s0,0(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <_Znwm>:
#include "../h/syscall_cpp.hpp"
#include "../h/memory.hpp"



void *operator new(uint64 n) {
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00113423          	sd	ra,8(sp)
    80002290:	00813023          	sd	s0,0(sp)
    80002294:	01010413          	addi	s0,sp,16
    //return __mem_alloc(n);
    return mem_alloc(n);
    80002298:	fffff097          	auipc	ra,0xfffff
    8000229c:	4c0080e7          	jalr	1216(ra) # 80001758 <_Z9mem_allocm>
}
    800022a0:	00813083          	ld	ra,8(sp)
    800022a4:	00013403          	ld	s0,0(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_Znam>:

void *operator new[](uint64 n) {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    //return __mem_alloc(n);
    return mem_alloc(n);
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	498080e7          	jalr	1176(ra) # 80001758 <_Z9mem_allocm>
}
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    //__mem_free(p);
    mem_free(p);
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	4d4080e7          	jalr	1236(ra) # 800017bc <_Z8mem_freePv>
}
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_ZdaPv>:

void operator delete[](void *p) noexcept {
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	00813023          	sd	s0,0(sp)
    8000230c:	01010413          	addi	s0,sp,16
    //__mem_free(p);
    mem_free(p);
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	4ac080e7          	jalr	1196(ra) # 800017bc <_Z8mem_freePv>
    80002318:	00813083          	ld	ra,8(sp)
    8000231c:	00013403          	ld	s0,0(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle,init);
}

Semaphore::~Semaphore() {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    80002338:	0000b797          	auipc	a5,0xb
    8000233c:	90878793          	addi	a5,a5,-1784 # 8000cc40 <_ZTV9Semaphore+0x10>
    80002340:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80002344:	00853503          	ld	a0,8(a0)
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	780080e7          	jalr	1920(ra) # 80001ac8 <_Z9sem_closeP3sem>
}
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002360:	fe010113          	addi	sp,sp,-32
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	02010413          	addi	s0,sp,32
    80002374:	00050493          	mv	s1,a0
}
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	fb0080e7          	jalr	-80(ra) # 80002328 <_ZN9SemaphoreD1Ev>
    80002380:	00048513          	mv	a0,s1
    80002384:	00000097          	auipc	ra,0x0
    80002388:	f54080e7          	jalr	-172(ra) # 800022d8 <_ZdlPv>
    8000238c:	01813083          	ld	ra,24(sp)
    80002390:	01013403          	ld	s0,16(sp)
    80002394:	00813483          	ld	s1,8(sp)
    80002398:	02010113          	addi	sp,sp,32
    8000239c:	00008067          	ret

00000000800023a0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    800023ac:	0000b797          	auipc	a5,0xb
    800023b0:	86c78793          	addi	a5,a5,-1940 # 8000cc18 <_ZTV6Thread+0x10>
    800023b4:	00f53023          	sd	a5,0(a0)
    this->body = body;
    800023b8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800023bc:	00c53c23          	sd	a2,24(a0)
    this->myHandle = nullptr;
    800023c0:	00053423          	sd	zero,8(a0)
}
    800023c4:	00813403          	ld	s0,8(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00813423          	sd	s0,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
    800023dc:	0000b797          	auipc	a5,0xb
    800023e0:	83c78793          	addi	a5,a5,-1988 # 8000cc18 <_ZTV6Thread+0x10>
    800023e4:	00f53023          	sd	a5,0(a0)
   this->body = wrapper;
    800023e8:	00000797          	auipc	a5,0x0
    800023ec:	3a878793          	addi	a5,a5,936 # 80002790 <_ZN6Thread7wrapperEPv>
    800023f0:	00f53823          	sd	a5,16(a0)
   this->arg = this;
    800023f4:	00a53c23          	sd	a0,24(a0)
   this->myHandle = nullptr;
    800023f8:	00053423          	sd	zero,8(a0)
}
    800023fc:	00813403          	ld	s0,8(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00113423          	sd	ra,8(sp)
    80002410:	00813023          	sd	s0,0(sp)
    80002414:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	534080e7          	jalr	1332(ra) # 8000194c <_Z15thread_dispatchv>
}
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    return (int) time_sleep(time);
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	588080e7          	jalr	1416(ra) # 800019c8 <_Z10time_sleepm>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN7Console4getcEv>:
char Console::getc() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    return ::getc();
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	5a0080e7          	jalr	1440(ra) # 80001a08 <_Z4getcv>
}
    80002470:	00813083          	ld	ra,8(sp)
    80002474:	00013403          	ld	s0,0(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	5b8080e7          	jalr	1464(ra) # 80001a48 <_Z4putcc>
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00113423          	sd	ra,8(sp)
    800024b0:	00813023          	sd	s0,0(sp)
    800024b4:	01010413          	addi	s0,sp,16
    800024b8:	0000a797          	auipc	a5,0xa
    800024bc:	78878793          	addi	a5,a5,1928 # 8000cc40 <_ZTV9Semaphore+0x10>
    800024c0:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle,init);
    800024c4:	00850513          	addi	a0,a0,8
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	5bc080e7          	jalr	1468(ra) # 80001a84 <_Z8sem_openPP3semj>
}
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN6Thread17SetMaximumThreadsEi>:
void Thread::SetMaximumThreads(int num_of_threads) {
    800024e0:	fe010113          	addi	sp,sp,-32
    800024e4:	00113c23          	sd	ra,24(sp)
    800024e8:	00813823          	sd	s0,16(sp)
    800024ec:	00913423          	sd	s1,8(sp)
    800024f0:	01213023          	sd	s2,0(sp)
    800024f4:	02010413          	addi	s0,sp,32
    800024f8:	00050913          	mv	s2,a0
    Thread::maxThreadsSemaphore = new Semaphore(num_of_threads);
    800024fc:	01000513          	li	a0,16
    80002500:	00000097          	auipc	ra,0x0
    80002504:	d88080e7          	jalr	-632(ra) # 80002288 <_Znwm>
    80002508:	00050493          	mv	s1,a0
    8000250c:	00090593          	mv	a1,s2
    80002510:	00000097          	auipc	ra,0x0
    80002514:	f98080e7          	jalr	-104(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    80002518:	0000b797          	auipc	a5,0xb
    8000251c:	9897bc23          	sd	s1,-1640(a5) # 8000ceb0 <_ZN6Thread19maxThreadsSemaphoreE>
}
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00813483          	ld	s1,8(sp)
    8000252c:	00013903          	ld	s2,0(sp)
    80002530:	02010113          	addi	sp,sp,32
    80002534:	00008067          	ret
    80002538:	00050913          	mv	s2,a0
    Thread::maxThreadsSemaphore = new Semaphore(num_of_threads);
    8000253c:	00048513          	mv	a0,s1
    80002540:	00000097          	auipc	ra,0x0
    80002544:	d98080e7          	jalr	-616(ra) # 800022d8 <_ZdlPv>
    80002548:	00090513          	mv	a0,s2
    8000254c:	0000c097          	auipc	ra,0xc
    80002550:	adc080e7          	jalr	-1316(ra) # 8000e028 <_Unwind_Resume>

0000000080002554 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002554:	ff010113          	addi	sp,sp,-16
    80002558:	00113423          	sd	ra,8(sp)
    8000255c:	00813023          	sd	s0,0(sp)
    80002560:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002564:	00853503          	ld	a0,8(a0)
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	5a0080e7          	jalr	1440(ra) # 80001b08 <_Z8sem_waitP3sem>
}
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN6Thread5startEv>:
int Thread::start() {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	02010413          	addi	s0,sp,32
    80002594:	00050493          	mv	s1,a0
    if(Thread::maxThreadsSemaphore != nullptr)
    80002598:	0000b517          	auipc	a0,0xb
    8000259c:	91853503          	ld	a0,-1768(a0) # 8000ceb0 <_ZN6Thread19maxThreadsSemaphoreE>
    800025a0:	00050663          	beqz	a0,800025ac <_ZN6Thread5startEv+0x2c>
        Thread::maxThreadsSemaphore->wait();
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	fb0080e7          	jalr	-80(ra) # 80002554 <_ZN9Semaphore4waitEv>
    return thread_create(&this->myHandle,body,arg);
    800025ac:	0184b603          	ld	a2,24(s1)
    800025b0:	0104b583          	ld	a1,16(s1)
    800025b4:	00848513          	addi	a0,s1,8
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	2d8080e7          	jalr	728(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800025c0:	01813083          	ld	ra,24(sp)
    800025c4:	01013403          	ld	s0,16(sp)
    800025c8:	00813483          	ld	s1,8(sp)
    800025cc:	02010113          	addi	sp,sp,32
    800025d0:	00008067          	ret

00000000800025d4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00113423          	sd	ra,8(sp)
    800025dc:	00813023          	sd	s0,0(sp)
    800025e0:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    800025e4:	00853503          	ld	a0,8(a0)
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	560080e7          	jalr	1376(ra) # 80001b48 <_Z10sem_signalP3sem>
}
    800025f0:	00813083          	ld	ra,8(sp)
    800025f4:	00013403          	ld	s0,0(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZN6Thread8finishedEv>:
    if(maxThreadsSemaphore != nullptr)
    80002600:	0000b517          	auipc	a0,0xb
    80002604:	8b053503          	ld	a0,-1872(a0) # 8000ceb0 <_ZN6Thread19maxThreadsSemaphoreE>
    80002608:	02050663          	beqz	a0,80002634 <_ZN6Thread8finishedEv+0x34>
void Thread::finished() {
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00113423          	sd	ra,8(sp)
    80002614:	00813023          	sd	s0,0(sp)
    80002618:	01010413          	addi	s0,sp,16
        Thread::maxThreadsSemaphore->signal();
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	fb8080e7          	jalr	-72(ra) # 800025d4 <_ZN9Semaphore6signalEv>
}
    80002624:	00813083          	ld	ra,8(sp)
    80002628:	00013403          	ld	s0,0(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret
    80002634:	00008067          	ret

0000000080002638 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002638:	fe010113          	addi	sp,sp,-32
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	02010413          	addi	s0,sp,32
    8000264c:	00050493          	mv	s1,a0
    80002650:	0000a797          	auipc	a5,0xa
    80002654:	5c878793          	addi	a5,a5,1480 # 8000cc18 <_ZTV6Thread+0x10>
    80002658:	00f53023          	sd	a5,0(a0)
    if(Thread::maxThreadsSemaphore != nullptr)
    8000265c:	0000b517          	auipc	a0,0xb
    80002660:	85453503          	ld	a0,-1964(a0) # 8000ceb0 <_ZN6Thread19maxThreadsSemaphoreE>
    80002664:	00050663          	beqz	a0,80002670 <_ZN6ThreadD1Ev+0x38>
        Thread::maxThreadsSemaphore->signal();
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	f6c080e7          	jalr	-148(ra) # 800025d4 <_ZN9Semaphore6signalEv>
    delete this->myHandle;
    80002670:	0084b483          	ld	s1,8(s1)
    80002674:	02048063          	beqz	s1,80002694 <_ZN6ThreadD1Ev+0x5c>
static int threadCounter = 0;

class TCB{
public:
    ~TCB() {
        delete[] stack;
    80002678:	0384b503          	ld	a0,56(s1)
    8000267c:	00050663          	beqz	a0,80002688 <_ZN6ThreadD1Ev+0x50>
    80002680:	00000097          	auipc	ra,0x0
    80002684:	c80080e7          	jalr	-896(ra) # 80002300 <_ZdaPv>
    80002688:	00048513          	mv	a0,s1
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	c4c080e7          	jalr	-948(ra) # 800022d8 <_ZdlPv>
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	02010113          	addi	sp,sp,32
    800026a4:	00008067          	ret

00000000800026a8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00113c23          	sd	ra,24(sp)
    800026b0:	00813823          	sd	s0,16(sp)
    800026b4:	00913423          	sd	s1,8(sp)
    800026b8:	02010413          	addi	s0,sp,32
    800026bc:	00050493          	mv	s1,a0
}
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	f78080e7          	jalr	-136(ra) # 80002638 <_ZN6ThreadD1Ev>
    800026c8:	00048513          	mv	a0,s1
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	c0c080e7          	jalr	-1012(ra) # 800022d8 <_ZdlPv>
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	02010113          	addi	sp,sp,32
    800026e4:	00008067          	ret

00000000800026e8 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    return 0;
}
    800026f4:	00000513          	li	a0,0
    800026f8:	00813403          	ld	s0,8(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002710:	00000513          	li	a0,0
    80002714:	00813403          	ld	s0,8(sp)
    80002718:	01010113          	addi	sp,sp,16
    8000271c:	00008067          	ret

0000000080002720 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00813423          	sd	s0,8(sp)
    80002728:	01010413          	addi	s0,sp,16

}
    8000272c:	00813403          	ld	s0,8(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	02010413          	addi	s0,sp,32
    8000274c:	00050493          	mv	s1,a0
    80002750:	00000097          	auipc	ra,0x0
    80002754:	c80080e7          	jalr	-896(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80002758:	0000a797          	auipc	a5,0xa
    8000275c:	49078793          	addi	a5,a5,1168 # 8000cbe8 <_ZTV14PeriodicThread+0x10>
    80002760:	00f4b023          	sd	a5,0(s1)

}
    80002764:	01813083          	ld	ra,24(sp)
    80002768:	01013403          	ld	s0,16(sp)
    8000276c:	00813483          	ld	s1,8(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret

0000000080002778 <_ZN6Thread3runEv>:
    static void SetMaximumThreads(int num_of_threads = 5);
    static Semaphore *maxThreadsSemaphore;
    static void finished();
protected:
    Thread ();
    virtual void run () {}
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00813423          	sd	s0,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00813403          	ld	s0,8(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN6Thread7wrapperEPv>:

    thread_t myHandle;
    void (*body)(void*);
    void* arg;
    static void wrapper(void* thread) {
        if (thread) {
    80002790:	02050863          	beqz	a0,800027c0 <_ZN6Thread7wrapperEPv+0x30>
    static void wrapper(void* thread) {
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00113423          	sd	ra,8(sp)
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    800027a4:	00053783          	ld	a5,0(a0)
    800027a8:	0107b783          	ld	a5,16(a5)
    800027ac:	000780e7          	jalr	a5
        }
    }
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret
    800027c0:	00008067          	ret

00000000800027c4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00813423          	sd	s0,8(sp)
    800027cc:	01010413          	addi	s0,sp,16
    800027d0:	00813403          	ld	s0,8(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00113423          	sd	ra,8(sp)
    800027e4:	00813023          	sd	s0,0(sp)
    800027e8:	01010413          	addi	s0,sp,16
    800027ec:	0000a797          	auipc	a5,0xa
    800027f0:	3fc78793          	addi	a5,a5,1020 # 8000cbe8 <_ZTV14PeriodicThread+0x10>
    800027f4:	00f53023          	sd	a5,0(a0)
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	e40080e7          	jalr	-448(ra) # 80002638 <_ZN6ThreadD1Ev>
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN14PeriodicThreadD0Ev>:
    80002810:	fe010113          	addi	sp,sp,-32
    80002814:	00113c23          	sd	ra,24(sp)
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	02010413          	addi	s0,sp,32
    80002824:	00050493          	mv	s1,a0
    80002828:	0000a797          	auipc	a5,0xa
    8000282c:	3c078793          	addi	a5,a5,960 # 8000cbe8 <_ZTV14PeriodicThread+0x10>
    80002830:	00f53023          	sd	a5,0(a0)
    80002834:	00000097          	auipc	ra,0x0
    80002838:	e04080e7          	jalr	-508(ra) # 80002638 <_ZN6ThreadD1Ev>
    8000283c:	00048513          	mv	a0,s1
    80002840:	00000097          	auipc	ra,0x0
    80002844:	a98080e7          	jalr	-1384(ra) # 800022d8 <_ZdlPv>
    80002848:	01813083          	ld	ra,24(sp)
    8000284c:	01013403          	ld	s0,16(sp)
    80002850:	00813483          	ld	s1,8(sp)
    80002854:	02010113          	addi	sp,sp,32
    80002858:	00008067          	ret

000000008000285c <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../lib/hw.h"
#include "../h/memory.hpp"

bool Riscv::isSupervisor;

void Riscv::handleSupervisorTrap() {
    8000285c:	f6010113          	addi	sp,sp,-160
    80002860:	08113c23          	sd	ra,152(sp)
    80002864:	08813823          	sd	s0,144(sp)
    80002868:	08913423          	sd	s1,136(sp)
    8000286c:	09213023          	sd	s2,128(sp)
    80002870:	0a010413          	addi	s0,sp,160
    Riscv::isSupervisor = true;
    80002874:	00100793          	li	a5,1
    80002878:	0000a717          	auipc	a4,0xa
    8000287c:	64f70023          	sb	a5,1600(a4) # 8000ceb8 <_ZN5Riscv12isSupervisorE>

    uint64 volatile code,a1,a2,a3,a4;


    __asm__ volatile("mv %[code], a0" : [code] "=r"(code));
    80002880:	00050793          	mv	a5,a0
    80002884:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("mv %[a1], a1" : [a1] "=r"(a1));
    80002888:	00058793          	mv	a5,a1
    8000288c:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[a2], a2" : [a2] "=r"(a2));
    80002890:	00060793          	mv	a5,a2
    80002894:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[a3], a3" : [a3] "=r"(a3));
    80002898:	00068793          	mv	a5,a3
    8000289c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[a4], a4" : [a4] "=r"(a4));
    800028a0:	00070793          	mv	a5,a4
    800028a4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[scause],scause" : [scause] "=r"(scause));
    800028a8:	142027f3          	csrr	a5,scause
    800028ac:	f8f43423          	sd	a5,-120(s0)
    return scause;
    800028b0:	f8843783          	ld	a5,-120(s0)

    uint64 volatile scause = r_scause();
    800028b4:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sepc],sepc" : [sepc] "=r"(sepc));
    800028b8:	141027f3          	csrr	a5,sepc
    800028bc:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    800028c0:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sepc = r_sepc();
    800028c4:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800028c8:	100027f3          	csrr	a5,sstatus
    800028cc:	f6f43c23          	sd	a5,-136(s0)
    return sstatus;
    800028d0:	f7843783          	ld	a5,-136(s0)
//    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL) {
//        sepc += 4;
//        w_sepc(sepc);
//    }

    uint64 volatile sstatus = r_sstatus();
    800028d4:	faf43023          	sd	a5,-96(s0)



    if(scause == 0x8000000000000001UL) {
    800028d8:	fb043703          	ld	a4,-80(s0)
    800028dc:	fff00793          	li	a5,-1
    800028e0:	03f79793          	slli	a5,a5,0x3f
    800028e4:	00178793          	addi	a5,a5,1
    800028e8:	0af70663          	beq	a4,a5,80002994 <_ZN5Riscv20handleSupervisorTrapEv+0x138>

        }


        mc_sip(SIP_SSIP);
    } else if (scause == 0x0000000000000009UL ||
    800028ec:	fb043703          	ld	a4,-80(s0)
    800028f0:	00900793          	li	a5,9
    800028f4:	12f70263          	beq	a4,a5,80002a18 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
               scause == 0x0000000000000008UL) { //if(scause == 0x8000000000000008UL) {
    800028f8:	fb043703          	ld	a4,-80(s0)
    } else if (scause == 0x0000000000000009UL ||
    800028fc:	00800793          	li	a5,8
    80002900:	10f70c63          	beq	a4,a5,80002a18 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            }
        }
        //TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000009UL) { // interrupt, supervisor external interrupt (console)
    80002904:	fb043703          	ld	a4,-80(s0)
    80002908:	fff00793          	li	a5,-1
    8000290c:	03f79793          	slli	a5,a5,0x3f
    80002910:	00978793          	addi	a5,a5,9
    80002914:	36f70863          	beq	a4,a5,80002c84 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else {
        //unexpected trap cause
        printString("unexpected error\n");
    80002918:	00008517          	auipc	a0,0x8
    8000291c:	9a050513          	addi	a0,a0,-1632 # 8000a2b8 <unknown_location+0x50>
    80002920:	00001097          	auipc	ra,0x1
    80002924:	f00080e7          	jalr	-256(ra) # 80003820 <printString>
        printHex(scause);
    80002928:	fb043503          	ld	a0,-80(s0)
    8000292c:	0005051b          	sext.w	a0,a0
    80002930:	00001097          	auipc	ra,0x1
    80002934:	0d8080e7          	jalr	216(ra) # 80003a08 <printHex>
        printString("\n");
    80002938:	00008517          	auipc	a0,0x8
    8000293c:	e7850513          	addi	a0,a0,-392 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80002940:	00001097          	auipc	ra,0x1
    80002944:	ee0080e7          	jalr	-288(ra) # 80003820 <printString>
        printHex(sepc);
    80002948:	fa843503          	ld	a0,-88(s0)
    8000294c:	0005051b          	sext.w	a0,a0
    80002950:	00001097          	auipc	ra,0x1
    80002954:	0b8080e7          	jalr	184(ra) # 80003a08 <printHex>
        printString("\n");
    80002958:	00008517          	auipc	a0,0x8
    8000295c:	e5850513          	addi	a0,a0,-424 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80002960:	00001097          	auipc	ra,0x1
    80002964:	ec0080e7          	jalr	-320(ra) # 80003820 <printString>
    __asm__ volatile ("csrr %[stval],stval" : [stval] "=r"(stval));
    80002968:	143027f3          	csrr	a5,stval
    8000296c:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80002970:	f9843503          	ld	a0,-104(s0)
        printHex(r_stval());
    80002974:	0005051b          	sext.w	a0,a0
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	090080e7          	jalr	144(ra) # 80003a08 <printHex>
        printString("\n");
    80002980:	00008517          	auipc	a0,0x8
    80002984:	e3050513          	addi	a0,a0,-464 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	e98080e7          	jalr	-360(ra) # 80003820 <printString>
        while(true){}
    80002990:	0000006f          	j	80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
        Scheduler::handleWaking();
    80002994:	00001097          	auipc	ra,0x1
    80002998:	aac080e7          	jalr	-1364(ra) # 80003440 <_ZN9Scheduler12handleWakingEv>
        TCB::timeSliceCounter++;
    8000299c:	0000a717          	auipc	a4,0xa
    800029a0:	48473703          	ld	a4,1156(a4) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029a4:	00073783          	ld	a5,0(a4)
    800029a8:	00178793          	addi	a5,a5,1
    800029ac:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800029b0:	0000a717          	auipc	a4,0xa
    800029b4:	48873703          	ld	a4,1160(a4) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    800029b8:	00073703          	ld	a4,0(a4)
    }

    uint64 getTimeSlice() const {
        return timeSlice;
    800029bc:	03073703          	ld	a4,48(a4)
    800029c0:	00e7f863          	bgeu	a5,a4,800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800029c4:	00200793          	li	a5,2
    800029c8:	1447b073          	csrc	sip,a5
}
    800029cc:	0ac0006f          	j	80002a78 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
    __asm__ volatile ("csrr %[sepc],sepc" : [sepc] "=r"(sepc));
    800029d0:	141027f3          	csrr	a5,sepc
    800029d4:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800029d8:	f9843783          	ld	a5,-104(s0)
            uint64 volatile ssepc = r_sepc();
    800029dc:	f6f43023          	sd	a5,-160(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800029e0:	100027f3          	csrr	a5,sstatus
    800029e4:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800029e8:	f9043783          	ld	a5,-112(s0)
            uint64 volatile ssstatus = r_sstatus();
    800029ec:	f6f43423          	sd	a5,-152(s0)
            TCB::timeSliceCounter = 0;
    800029f0:	0000a797          	auipc	a5,0xa
    800029f4:	4307b783          	ld	a5,1072(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029f8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	35c080e7          	jalr	860(ra) # 80002d58 <_ZN3TCB8dispatchEv>
            w_sstatus(ssstatus);
    80002a04:	f6843783          	ld	a5,-152(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002a08:	10079073          	csrw	sstatus,a5
            w_sepc(ssepc);
    80002a0c:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002a10:	14179073          	csrw	sepc,a5
}
    80002a14:	fb1ff06f          	j	800029c4 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        volatile uint64 scode = code;
    80002a18:	fd843783          	ld	a5,-40(s0)
    80002a1c:	f6f43823          	sd	a5,-144(s0)
        sepc += 4;
    80002a20:	fa843783          	ld	a5,-88(s0)
    80002a24:	00478793          	addi	a5,a5,4
    80002a28:	faf43423          	sd	a5,-88(s0)
        switch (scode) {
    80002a2c:	f7043783          	ld	a5,-144(s0)
    80002a30:	04200713          	li	a4,66
    80002a34:	02f76a63          	bltu	a4,a5,80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    80002a38:	00279793          	slli	a5,a5,0x2
    80002a3c:	00008717          	auipc	a4,0x8
    80002a40:	89070713          	addi	a4,a4,-1904 # 8000a2cc <unknown_location+0x64>
    80002a44:	00e787b3          	add	a5,a5,a4
    80002a48:	0007a783          	lw	a5,0(a5)
    80002a4c:	00e787b3          	add	a5,a5,a4
    80002a50:	00078067          	jr	a5
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_alloc((size_t)a1)));
    80002a54:	fd043503          	ld	a0,-48(s0)
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	0e4080e7          	jalr	228(ra) # 80003b3c <_ZN6Memory9mem_allocEm>
    80002a60:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002a64:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    80002a68:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002a6c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002a70:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002a74:	14179073          	csrw	sepc,a5
    }
    Riscv::isSupervisor = false;
    80002a78:	0000a797          	auipc	a5,0xa
    80002a7c:	44078023          	sb	zero,1088(a5) # 8000ceb8 <_ZN5Riscv12isSupervisorE>
}
    80002a80:	09813083          	ld	ra,152(sp)
    80002a84:	09013403          	ld	s0,144(sp)
    80002a88:	08813483          	ld	s1,136(sp)
    80002a8c:	08013903          	ld	s2,128(sp)
    80002a90:	0a010113          	addi	sp,sp,160
    80002a94:	00008067          	ret
                Memory::mem_free((void*) a1);
    80002a98:	fd043503          	ld	a0,-48(s0)
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	20c080e7          	jalr	524(ra) # 80003ca8 <_ZN6Memory8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(0));
    80002aa4:	00000793          	li	a5,0
    80002aa8:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002aac:	04542823          	sw	t0,80(s0)
                break;
    80002ab0:	fb9ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_get_free_space()));
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	144080e7          	jalr	324(ra) # 80003bf8 <_ZN6Memory18mem_get_free_spaceEv>
    80002abc:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002ac0:	04542823          	sw	t0,80(s0)
                break;
    80002ac4:	fa5ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_get_largest_free_block()));
    80002ac8:	00001097          	auipc	ra,0x1
    80002acc:	188080e7          	jalr	392(ra) # 80003c50 <_ZN6Memory26mem_get_largest_free_blockEv>
    80002ad0:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002ad4:	04542823          	sw	t0,80(s0)
                break;
    80002ad8:	f91ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                thread = (TCB **) a1;
    80002adc:	fd043483          	ld	s1,-48(s0)
                body = (TCB::Body) a2;
    80002ae0:	fc843503          	ld	a0,-56(s0)
                arg = (void *) a3;
    80002ae4:	fc043583          	ld	a1,-64(s0)
                *thread = TCB::createThread(body, arg);
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	310080e7          	jalr	784(ra) # 80002df8 <_ZN3TCB12createThreadEPFvPvES0_>
    80002af0:	00a4b023          	sd	a0,0(s1)
                if (*thread != nullptr) {
    80002af4:	00050a63          	beqz	a0,80002b08 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
                    __asm__ volatile("mv t0, %0" : : "r"(0));
    80002af8:	00000793          	li	a5,0
    80002afc:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002b00:	04542823          	sw	t0,80(s0)
    80002b04:	f65ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
    80002b08:	fff00793          	li	a5,-1
    80002b0c:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002b10:	04542823          	sw	t0,80(s0)
    80002b14:	f55ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                if (TCB::running == nullptr) {
    80002b18:	0000a797          	auipc	a5,0xa
    80002b1c:	3207b783          	ld	a5,800(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002b20:	0007b783          	ld	a5,0(a5)
    80002b24:	00078e63          	beqz	a5,80002b40 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
        TCB::finished = finished;
    80002b28:	00100713          	li	a4,1
    80002b2c:	04e78823          	sb	a4,80(a5)
                    __asm__ volatile("mv t0, %0" : : "r"(0));
    80002b30:	00000793          	li	a5,0
    80002b34:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002b38:	04542823          	sw	t0,80(s0)
    80002b3c:	f2dff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
    80002b40:	fff00793          	li	a5,-1
    80002b44:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002b48:	04542823          	sw	t0,80(s0)
    80002b4c:	f1dff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                TCB::dispatch();
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	208080e7          	jalr	520(ra) # 80002d58 <_ZN3TCB8dispatchEv>
                break;
    80002b58:	f11ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                int threadId = TCB::running->getThreadId();
    80002b5c:	0000a797          	auipc	a5,0xa
    80002b60:	2dc7b783          	ld	a5,732(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002b64:	0007b783          	ld	a5,0(a5)
    void setSleepy(bool sleepy) {
        this->sleep = sleepy;
    }

    int getThreadId() {
        return this->threadId;
    80002b68:	0547a783          	lw	a5,84(a5)
                __asm__ volatile("mv t0, %0" : : "r"(threadId));
    80002b6c:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002b70:	04542823          	sw	t0,80(s0)
                TCB::dispatch();
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	1e4080e7          	jalr	484(ra) # 80002d58 <_ZN3TCB8dispatchEv>
                break;
    80002b7c:	eedff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                semaphore = (sem **) a1;
    80002b80:	fd043483          	ld	s1,-48(s0)
                init = (unsigned) a2;
    80002b84:	fc843903          	ld	s2,-56(s0)
                *semaphore = new sem(init);
    80002b88:	02800513          	li	a0,40
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	6fc080e7          	jalr	1788(ra) # 80002288 <_Znwm>
#include "TCB.hpp"
#include "../lib/mem.h"

class sem {
public:
    explicit sem(unsigned init = 1) : value(init), closed(false), counter(0){myHandle = this;}
    80002b94:	0009071b          	sext.w	a4,s2
    80002b98:	00e52423          	sw	a4,8(a0)
    80002b9c:	00050623          	sb	zero,12(a0)
    80002ba0:	00052823          	sw	zero,16(a0)
    List(): head(0), tail(0) {}
    80002ba4:	00053c23          	sd	zero,24(a0)
    80002ba8:	02053023          	sd	zero,32(a0)
    80002bac:	00a53023          	sd	a0,0(a0)
    80002bb0:	00a4b023          	sd	a0,0(s1)
                if (*semaphore != nullptr) {
    80002bb4:	00050a63          	beqz	a0,80002bc8 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
                    __asm__ volatile("mv t0, %0" : : "r"(0));
    80002bb8:	00000793          	li	a5,0
    80002bbc:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002bc0:	04542823          	sw	t0,80(s0)
    80002bc4:	ea5ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
    80002bc8:	fff00793          	li	a5,-1
    80002bcc:	00078293          	mv	t0,a5
                    __asm__ volatile("sw t0, 80(x8)");
    80002bd0:	04542823          	sw	t0,80(s0)
    80002bd4:	e95ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                semaphore = (sem *) a1;
    80002bd8:	fd043503          	ld	a0,-48(s0)
                semaphore->close();
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	33c080e7          	jalr	828(ra) # 80001f18 <_ZN3sem5closeEv>
                __asm__ volatile("mv t0, %0" : : "r"(0));
    80002be4:	00000793          	li	a5,0
    80002be8:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002bec:	04542823          	sw	t0,80(s0)
                break;
    80002bf0:	e79ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                semaphore = (sem *) a1;
    80002bf4:	fd043503          	ld	a0,-48(s0)
                int r = semaphore->wait();
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	26c080e7          	jalr	620(ra) # 80001e64 <_ZN3sem4waitEv>
                __asm__ volatile("mv t0, %0" : : "r"(r));
    80002c00:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002c04:	04542823          	sw	t0,80(s0)
                break;
    80002c08:	e61ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                semaphore = (sem *) a1;
    80002c0c:	fd043503          	ld	a0,-48(s0)
                int r = semaphore->signal();
    80002c10:	00100593          	li	a1,1
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	29c080e7          	jalr	668(ra) # 80001eb0 <_ZN3sem6signalEb>
                __asm__ volatile("mv t0, %0" : : "r"(r));
    80002c1c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002c20:	04542823          	sw	t0,80(s0)
                break;
    80002c24:	e45ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                time_t time = a1;
    80002c28:	fd043583          	ld	a1,-48(s0)
                Scheduler::putToSleep(TCB::running, time);
    80002c2c:	0005859b          	sext.w	a1,a1
    80002c30:	0000a797          	auipc	a5,0xa
    80002c34:	2087b783          	ld	a5,520(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c38:	0007b503          	ld	a0,0(a5)
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	6cc080e7          	jalr	1740(ra) # 80003308 <_ZN9Scheduler10putToSleepEP3TCBi>
                TCB::dispatch();
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	114080e7          	jalr	276(ra) # 80002d58 <_ZN3TCB8dispatchEv>
                __asm__ volatile("mv t0, %0" : : "r"(0));
    80002c4c:	00000793          	li	a5,0
    80002c50:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002c54:	04542823          	sw	t0,80(s0)
                break;
    80002c58:	e11ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                char ret = __getc();
    80002c5c:	00007097          	auipc	ra,0x7
    80002c60:	b50080e7          	jalr	-1200(ra) # 800097ac <__getc>
                __asm__ volatile("mv t0, %0" : : "r"(ret));
    80002c64:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002c68:	04542823          	sw	t0,80(s0)
                break;
    80002c6c:	dfdff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                char c = a1;
    80002c70:	fd043503          	ld	a0,-48(s0)
                __putc(c);
    80002c74:	0ff57513          	andi	a0,a0,255
    80002c78:	00007097          	auipc	ra,0x7
    80002c7c:	af8080e7          	jalr	-1288(ra) # 80009770 <__putc>
                break;
    80002c80:	de9ff06f          	j	80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        console_handler();
    80002c84:	00007097          	auipc	ra,0x7
    80002c88:	b60080e7          	jalr	-1184(ra) # 800097e4 <console_handler>
        w_sstatus(sstatus);
    80002c8c:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002c90:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002c94:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c98:	14179073          	csrw	sepc,a5
}
    80002c9c:	dddff06f          	j	80002a78 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>

0000000080002ca0 <_ZN5Riscv10popSppSpieEv>:

//funkcija za prelaz u iz sistemskog u korisnicki rezim
void Riscv::popSppSpie()
{
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00813423          	sd	s0,8(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    Riscv::isSupervisor = false;
    80002cac:	0000a797          	auipc	a5,0xa
    80002cb0:	20078623          	sb	zero,524(a5) # 8000ceb8 <_ZN5Riscv12isSupervisorE>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002cb4:	10000793          	li	a5,256
    80002cb8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP); // set sstatus na nulu tj spp
    __asm__ volatile("csrw sepc, ra");
    80002cbc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002cc0:	10200073          	sret
}
    80002cc4:	00813403          	ld	s0,8(sp)
    80002cc8:	01010113          	addi	sp,sp,16
    80002ccc:	00008067          	ret

0000000080002cd0 <_ZN3TCB5yieldEv>:

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

void TCB::yield() {
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
//    pushRegisters();
//    TCB::dispatch();
//    popRegisters();
//    __asm__ volatile ("ecall");

    __asm__ volatile("mv a0, %0" : : "r" (0x13)); //calls thread_dispatch()
    80002cdc:	01300793          	li	a5,19
    80002ce0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002ce4:	00000073          	ecall

}
    80002ce8:	00813403          	ld	s0,8(sp)
    80002cec:	01010113          	addi	sp,sp,16
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN3TCB13threadWrapperEv>:
    return new TCB(false, body,arg,TIME_SLICE);
}



void TCB::threadWrapper() {
    80002cf4:	ff010113          	addi	sp,sp,-16
    80002cf8:	00113423          	sd	ra,8(sp)
    80002cfc:	00813023          	sd	s0,0(sp)
    80002d00:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	f9c080e7          	jalr	-100(ra) # 80002ca0 <_ZN5Riscv10popSppSpieEv>


    if(running->body != nullptr) {
    80002d0c:	0000a797          	auipc	a5,0xa
    80002d10:	1b47b783          	ld	a5,436(a5) # 8000cec0 <_ZN3TCB7runningE>
    80002d14:	0187b703          	ld	a4,24(a5)
    80002d18:	02070a63          	beqz	a4,80002d4c <_ZN3TCB13threadWrapperEv+0x58>
        running->body(running->arg);
    80002d1c:	0287b503          	ld	a0,40(a5)
    80002d20:	000700e7          	jalr	a4
        TCB::finished = finished;
    80002d24:	0000a797          	auipc	a5,0xa
    80002d28:	19c7b783          	ld	a5,412(a5) # 8000cec0 <_ZN3TCB7runningE>
    80002d2c:	00100713          	li	a4,1
    80002d30:	04e78823          	sb	a4,80(a5)
    } else {
        running->nb();
    }
    running->setFinished(true);
    TCB::yield();
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	f9c080e7          	jalr	-100(ra) # 80002cd0 <_ZN3TCB5yieldEv>
}
    80002d3c:	00813083          	ld	ra,8(sp)
    80002d40:	00013403          	ld	s0,0(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret
        running->nb();
    80002d4c:	0207b783          	ld	a5,32(a5)
    80002d50:	000780e7          	jalr	a5
    80002d54:	fd1ff06f          	j	80002d24 <_ZN3TCB13threadWrapperEv+0x30>

0000000080002d58 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002d6c:	0000a497          	auipc	s1,0xa
    80002d70:	1544b483          	ld	s1,340(s1) # 8000cec0 <_ZN3TCB7runningE>
        return finished;
    80002d74:	0504c783          	lbu	a5,80(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSleepy())
    80002d78:	00079a63          	bnez	a5,80002d8c <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    80002d7c:	0514c783          	lbu	a5,81(s1)
    80002d80:	00079663          	bnez	a5,80002d8c <_ZN3TCB8dispatchEv+0x34>
        return this->sleep;
    80002d84:	0524c783          	lbu	a5,82(s1)
    80002d88:	04078863          	beqz	a5,80002dd8 <_ZN3TCB8dispatchEv+0x80>
    running = Scheduler::get();
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	394080e7          	jalr	916(ra) # 80003120 <_ZN9Scheduler3getEv>
    80002d94:	0000a797          	auipc	a5,0xa
    80002d98:	12a7b623          	sd	a0,300(a5) # 8000cec0 <_ZN3TCB7runningE>
    if(running->isSupervisor)
    80002d9c:	00054783          	lbu	a5,0(a0)
    80002da0:	04078463          	beqz	a5,80002de8 <_ZN3TCB8dispatchEv+0x90>
        Riscv::isSupervisor = true;
    80002da4:	0000a797          	auipc	a5,0xa
    80002da8:	09c7b783          	ld	a5,156(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002dac:	00100713          	li	a4,1
    80002db0:	00e78023          	sb	a4,0(a5)
    TCB::contextSwitch(&old->context, &running->context);
    80002db4:	04050593          	addi	a1,a0,64
    80002db8:	04048513          	addi	a0,s1,64
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	464080e7          	jalr	1124(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002dc4:	01813083          	ld	ra,24(sp)
    80002dc8:	01013403          	ld	s0,16(sp)
    80002dcc:	00813483          	ld	s1,8(sp)
    80002dd0:	02010113          	addi	sp,sp,32
    80002dd4:	00008067          	ret
        Scheduler::put(old);
    80002dd8:	00048513          	mv	a0,s1
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	3ac080e7          	jalr	940(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
    80002de4:	fa9ff06f          	j	80002d8c <_ZN3TCB8dispatchEv+0x34>
        Riscv::isSupervisor = false;
    80002de8:	0000a797          	auipc	a5,0xa
    80002dec:	0587b783          	ld	a5,88(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002df0:	00078023          	sb	zero,0(a5)
    80002df4:	fc1ff06f          	j	80002db4 <_ZN3TCB8dispatchEv+0x5c>

0000000080002df8 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::createThread(TCB::Body body, void* arg) {
    80002df8:	fd010113          	addi	sp,sp,-48
    80002dfc:	02113423          	sd	ra,40(sp)
    80002e00:	02813023          	sd	s0,32(sp)
    80002e04:	00913c23          	sd	s1,24(sp)
    80002e08:	01213823          	sd	s2,16(sp)
    80002e0c:	01313423          	sd	s3,8(sp)
    80002e10:	03010413          	addi	s0,sp,48
    80002e14:	00050913          	mv	s2,a0
    80002e18:	00058993          	mv	s3,a1
    return new TCB(false, body,arg,TIME_SLICE);
    80002e1c:	05800513          	li	a0,88
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	468080e7          	jalr	1128(ra) # 80002288 <_Znwm>
    80002e28:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({ (uint64) &threadWrapper,
                 stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            finished(false),
            blocked(false),
            sleep(false)
    80002e2c:	00050023          	sb	zero,0(a0)
    80002e30:	01253c23          	sd	s2,24(a0)
    80002e34:	03353423          	sd	s3,40(a0)
    80002e38:	00200793          	li	a5,2
    80002e3c:	02f53823          	sd	a5,48(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002e40:	00090a63          	beqz	s2,80002e54 <_ZN3TCB12createThreadEPFvPvES0_+0x5c>
    80002e44:	00008537          	lui	a0,0x8
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	468080e7          	jalr	1128(ra) # 800022b0 <_Znam>
    80002e50:	0080006f          	j	80002e58 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    80002e54:	00000513          	li	a0,0
            sleep(false)
    80002e58:	02a4bc23          	sd	a0,56(s1)
    80002e5c:	00000797          	auipc	a5,0x0
    80002e60:	e9878793          	addi	a5,a5,-360 # 80002cf4 <_ZN3TCB13threadWrapperEv>
    80002e64:	04f4b023          	sd	a5,64(s1)
                 stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002e68:	04050463          	beqz	a0,80002eb0 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
    80002e6c:	000087b7          	lui	a5,0x8
    80002e70:	00f507b3          	add	a5,a0,a5
            sleep(false)
    80002e74:	04f4b423          	sd	a5,72(s1)
    80002e78:	04048823          	sb	zero,80(s1)
    80002e7c:	040488a3          	sb	zero,81(s1)
    80002e80:	04048923          	sb	zero,82(s1)
        {
            threadId = threadCounter++;
    80002e84:	0000a717          	auipc	a4,0xa
    80002e88:	03c70713          	addi	a4,a4,60 # 8000cec0 <_ZN3TCB7runningE>
    80002e8c:	00872783          	lw	a5,8(a4)
    80002e90:	0017869b          	addiw	a3,a5,1
    80002e94:	00d72423          	sw	a3,8(a4)
    80002e98:	04f4aa23          	sw	a5,84(s1)
            if(body != nullptr)
    80002e9c:	02090c63          	beqz	s2,80002ed4 <_ZN3TCB12createThreadEPFvPvES0_+0xdc>
                Scheduler::put(this);
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	2e4080e7          	jalr	740(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
    80002eac:	0280006f          	j	80002ed4 <_ZN3TCB12createThreadEPFvPvES0_+0xdc>
                 stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002eb0:	00000793          	li	a5,0
    80002eb4:	fc1ff06f          	j	80002e74 <_ZN3TCB12createThreadEPFvPvES0_+0x7c>
    80002eb8:	00050913          	mv	s2,a0
    80002ebc:	00048513          	mv	a0,s1
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	418080e7          	jalr	1048(ra) # 800022d8 <_ZdlPv>
    80002ec8:	00090513          	mv	a0,s2
    80002ecc:	0000b097          	auipc	ra,0xb
    80002ed0:	15c080e7          	jalr	348(ra) # 8000e028 <_Unwind_Resume>
}
    80002ed4:	00048513          	mv	a0,s1
    80002ed8:	02813083          	ld	ra,40(sp)
    80002edc:	02013403          	ld	s0,32(sp)
    80002ee0:	01813483          	ld	s1,24(sp)
    80002ee4:	01013903          	ld	s2,16(sp)
    80002ee8:	00813983          	ld	s3,8(sp)
    80002eec:	03010113          	addi	sp,sp,48
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN3TCB12createThreadEPFvvE>:

TCB *TCB::createThread(TCB::newBody body) {
    80002ef4:	fe010113          	addi	sp,sp,-32
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	00813823          	sd	s0,16(sp)
    80002f00:	00913423          	sd	s1,8(sp)
    80002f04:	01213023          	sd	s2,0(sp)
    80002f08:	02010413          	addi	s0,sp,32
    80002f0c:	00050913          	mv	s2,a0
    return new TCB(false, body,TIME_SLICE);
    80002f10:	05800513          	li	a0,88
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	374080e7          	jalr	884(ra) # 80002288 <_Znwm>
    80002f1c:	00050493          	mv	s1,a0
            stack(nb != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({ (uint64) &threadWrapper,
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            finished(false),
            blocked(false),
            sleep(false)
    80002f20:	00050023          	sb	zero,0(a0) # 8000 <_entry-0x7fff8000>
    80002f24:	03253023          	sd	s2,32(a0)
    80002f28:	00200793          	li	a5,2
    80002f2c:	02f53823          	sd	a5,48(a0)
            stack(nb != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002f30:	00090a63          	beqz	s2,80002f44 <_ZN3TCB12createThreadEPFvvE+0x50>
    80002f34:	00008537          	lui	a0,0x8
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	378080e7          	jalr	888(ra) # 800022b0 <_Znam>
    80002f40:	0080006f          	j	80002f48 <_ZN3TCB12createThreadEPFvvE+0x54>
    80002f44:	00000513          	li	a0,0
            sleep(false)
    80002f48:	02a4bc23          	sd	a0,56(s1)
    80002f4c:	00000797          	auipc	a5,0x0
    80002f50:	da878793          	addi	a5,a5,-600 # 80002cf4 <_ZN3TCB13threadWrapperEv>
    80002f54:	04f4b023          	sd	a5,64(s1)
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002f58:	04050663          	beqz	a0,80002fa4 <_ZN3TCB12createThreadEPFvvE+0xb0>
    80002f5c:	000087b7          	lui	a5,0x8
    80002f60:	00f507b3          	add	a5,a0,a5
            sleep(false)
    80002f64:	04f4b423          	sd	a5,72(s1)
    80002f68:	04048823          	sb	zero,80(s1)
    80002f6c:	040488a3          	sb	zero,81(s1)
    80002f70:	04048923          	sb	zero,82(s1)
        {
            body = nullptr;
    80002f74:	0004bc23          	sd	zero,24(s1)
            threadId = threadCounter++;
    80002f78:	0000a717          	auipc	a4,0xa
    80002f7c:	f4870713          	addi	a4,a4,-184 # 8000cec0 <_ZN3TCB7runningE>
    80002f80:	00872783          	lw	a5,8(a4)
    80002f84:	0017869b          	addiw	a3,a5,1
    80002f88:	00d72423          	sw	a3,8(a4)
    80002f8c:	04f4aa23          	sw	a5,84(s1)
            if(nb != nullptr)
    80002f90:	02090c63          	beqz	s2,80002fc8 <_ZN3TCB12createThreadEPFvvE+0xd4>
                Scheduler::put(this);
    80002f94:	00048513          	mv	a0,s1
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	1f0080e7          	jalr	496(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
    80002fa0:	0280006f          	j	80002fc8 <_ZN3TCB12createThreadEPFvvE+0xd4>
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002fa4:	00000793          	li	a5,0
    80002fa8:	fbdff06f          	j	80002f64 <_ZN3TCB12createThreadEPFvvE+0x70>
    80002fac:	00050913          	mv	s2,a0
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	324080e7          	jalr	804(ra) # 800022d8 <_ZdlPv>
    80002fbc:	00090513          	mv	a0,s2
    80002fc0:	0000b097          	auipc	ra,0xb
    80002fc4:	068080e7          	jalr	104(ra) # 8000e028 <_Unwind_Resume>
}
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	00013903          	ld	s2,0(sp)
    80002fdc:	02010113          	addi	sp,sp,32
    80002fe0:	00008067          	ret

0000000080002fe4 <_ZN3TCB18createKernelThreadEPFvvE>:

TCB *TCB::createKernelThread(TCB::newBody body) {
    80002fe4:	fe010113          	addi	sp,sp,-32
    80002fe8:	00113c23          	sd	ra,24(sp)
    80002fec:	00813823          	sd	s0,16(sp)
    80002ff0:	00913423          	sd	s1,8(sp)
    80002ff4:	01213023          	sd	s2,0(sp)
    80002ff8:	02010413          	addi	s0,sp,32
    80002ffc:	00050913          	mv	s2,a0
    return new TCB(true, body,TIME_SLICE);
    80003000:	05800513          	li	a0,88
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	284080e7          	jalr	644(ra) # 80002288 <_Znwm>
    8000300c:	00050493          	mv	s1,a0
            sleep(false)
    80003010:	00100793          	li	a5,1
    80003014:	00f50023          	sb	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80003018:	03253023          	sd	s2,32(a0)
    8000301c:	00200793          	li	a5,2
    80003020:	02f53823          	sd	a5,48(a0)
            stack(nb != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80003024:	00090a63          	beqz	s2,80003038 <_ZN3TCB18createKernelThreadEPFvvE+0x54>
    80003028:	00008537          	lui	a0,0x8
    8000302c:	fffff097          	auipc	ra,0xfffff
    80003030:	284080e7          	jalr	644(ra) # 800022b0 <_Znam>
    80003034:	0080006f          	j	8000303c <_ZN3TCB18createKernelThreadEPFvvE+0x58>
    80003038:	00000513          	li	a0,0
            sleep(false)
    8000303c:	02a4bc23          	sd	a0,56(s1)
    80003040:	00000797          	auipc	a5,0x0
    80003044:	cb478793          	addi	a5,a5,-844 # 80002cf4 <_ZN3TCB13threadWrapperEv>
    80003048:	04f4b023          	sd	a5,64(s1)
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    8000304c:	04050663          	beqz	a0,80003098 <_ZN3TCB18createKernelThreadEPFvvE+0xb4>
    80003050:	000087b7          	lui	a5,0x8
    80003054:	00f507b3          	add	a5,a0,a5
            sleep(false)
    80003058:	04f4b423          	sd	a5,72(s1)
    8000305c:	04048823          	sb	zero,80(s1)
    80003060:	040488a3          	sb	zero,81(s1)
    80003064:	04048923          	sb	zero,82(s1)
            body = nullptr;
    80003068:	0004bc23          	sd	zero,24(s1)
            threadId = threadCounter++;
    8000306c:	0000a717          	auipc	a4,0xa
    80003070:	e5470713          	addi	a4,a4,-428 # 8000cec0 <_ZN3TCB7runningE>
    80003074:	00872783          	lw	a5,8(a4)
    80003078:	0017869b          	addiw	a3,a5,1
    8000307c:	00d72423          	sw	a3,8(a4)
    80003080:	04f4aa23          	sw	a5,84(s1)
            if(nb != nullptr)
    80003084:	02090c63          	beqz	s2,800030bc <_ZN3TCB18createKernelThreadEPFvvE+0xd8>
                Scheduler::put(this);
    80003088:	00048513          	mv	a0,s1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	0fc080e7          	jalr	252(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
    80003094:	0280006f          	j	800030bc <_ZN3TCB18createKernelThreadEPFvvE+0xd8>
                  stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80003098:	00000793          	li	a5,0
    8000309c:	fbdff06f          	j	80003058 <_ZN3TCB18createKernelThreadEPFvvE+0x74>
    800030a0:	00050913          	mv	s2,a0
    800030a4:	00048513          	mv	a0,s1
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	230080e7          	jalr	560(ra) # 800022d8 <_ZdlPv>
    800030b0:	00090513          	mv	a0,s2
    800030b4:	0000b097          	auipc	ra,0xb
    800030b8:	f74080e7          	jalr	-140(ra) # 8000e028 <_Unwind_Resume>
    800030bc:	00048513          	mv	a0,s1
    800030c0:	01813083          	ld	ra,24(sp)
    800030c4:	01013403          	ld	s0,16(sp)
    800030c8:	00813483          	ld	s1,8(sp)
    800030cc:	00013903          	ld	s2,0(sp)
    800030d0:	02010113          	addi	sp,sp,32
    800030d4:	00008067          	ret

00000000800030d8 <_Z41__static_initialization_and_destruction_0ii>:
        } else {
            current->data->sleepTime -= 1;
        }
        current = current->next;
    }
    800030d8:	ff010113          	addi	sp,sp,-16
    800030dc:	00813423          	sd	s0,8(sp)
    800030e0:	01010413          	addi	s0,sp,16
    800030e4:	00100793          	li	a5,1
    800030e8:	00f50863          	beq	a0,a5,800030f8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret
    800030f8:	000107b7          	lui	a5,0x10
    800030fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003100:	fef596e3          	bne	a1,a5,800030ec <_Z41__static_initialization_and_destruction_0ii+0x14>
    80003104:	0000a797          	auipc	a5,0xa
    80003108:	dd478793          	addi	a5,a5,-556 # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    8000310c:	0007b023          	sd	zero,0(a5)
    80003110:	0007b423          	sd	zero,8(a5)
    80003114:	0007b823          	sd	zero,16(a5)
    80003118:	0007bc23          	sd	zero,24(a5)
    8000311c:	fd1ff06f          	j	800030ec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003120 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80003120:	fe010113          	addi	sp,sp,-32
    80003124:	00113c23          	sd	ra,24(sp)
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00913423          	sd	s1,8(sp)
    80003130:	02010413          	addi	s0,sp,32
        if(!head)
    80003134:	0000a517          	auipc	a0,0xa
    80003138:	da453503          	ld	a0,-604(a0) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    8000313c:	04050263          	beqz	a0,80003180 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80003140:	00853783          	ld	a5,8(a0)
    80003144:	0000a717          	auipc	a4,0xa
    80003148:	d8f73a23          	sd	a5,-620(a4) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head)
    8000314c:	02078463          	beqz	a5,80003174 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80003150:	00053483          	ld	s1,0(a0)
        delete elem;
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	184080e7          	jalr	388(ra) # 800022d8 <_ZdlPv>
}
    8000315c:	00048513          	mv	a0,s1
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00813483          	ld	s1,8(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret
            tail = 0;
    80003174:	0000a797          	auipc	a5,0xa
    80003178:	d607b623          	sd	zero,-660(a5) # 8000cee0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000317c:	fd5ff06f          	j	80003150 <_ZN9Scheduler3getEv+0x30>
            return 0;
    80003180:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80003184:	fd9ff06f          	j	8000315c <_ZN9Scheduler3getEv+0x3c>

0000000080003188 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800031a0:	01000513          	li	a0,16
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	0e4080e7          	jalr	228(ra) # 80002288 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800031ac:	00953023          	sd	s1,0(a0)
    800031b0:	00053423          	sd	zero,8(a0)
        if(tail) {
    800031b4:	0000a797          	auipc	a5,0xa
    800031b8:	d2c7b783          	ld	a5,-724(a5) # 8000cee0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800031bc:	02078263          	beqz	a5,800031e0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800031c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800031c4:	0000a797          	auipc	a5,0xa
    800031c8:	d0a7be23          	sd	a0,-740(a5) # 8000cee0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
}
    800031cc:	01813083          	ld	ra,24(sp)
    800031d0:	01013403          	ld	s0,16(sp)
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret
            head = tail = elem;
    800031e0:	0000a797          	auipc	a5,0xa
    800031e4:	cf878793          	addi	a5,a5,-776 # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    800031e8:	00a7b423          	sd	a0,8(a5)
    800031ec:	00a7b023          	sd	a0,0(a5)
    800031f0:	fddff06f          	j	800031cc <_ZN9Scheduler3putEP3TCB+0x44>

00000000800031f4 <_ZN9Scheduler15printAllThreadsEv>:
void Scheduler::printAllThreads() {
    800031f4:	fe010113          	addi	sp,sp,-32
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	00813823          	sd	s0,16(sp)
    80003200:	00913423          	sd	s1,8(sp)
    80003204:	02010413          	addi	s0,sp,32
    printString("----scheduler begin\n");
    80003208:	00007517          	auipc	a0,0x7
    8000320c:	1d050513          	addi	a0,a0,464 # 8000a3d8 <unknown_location+0x170>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	610080e7          	jalr	1552(ra) # 80003820 <printString>
    }

    Elem *peekFirstStruct() {
        if(!head)
    80003218:	0000a497          	auipc	s1,0xa
    8000321c:	cc04b483          	ld	s1,-832(s1) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    while (current != nullptr) {
    80003220:	02048463          	beqz	s1,80003248 <_ZN9Scheduler15printAllThreadsEv+0x54>
        printHex((uint64)current->data);
    80003224:	0004a503          	lw	a0,0(s1)
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	7e0080e7          	jalr	2016(ra) # 80003a08 <printHex>
        printString("\n");
    80003230:	00007517          	auipc	a0,0x7
    80003234:	58050513          	addi	a0,a0,1408 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	5e8080e7          	jalr	1512(ra) # 80003820 <printString>
        current = current->next;
    80003240:	0084b483          	ld	s1,8(s1)
    while (current != nullptr) {
    80003244:	fddff06f          	j	80003220 <_ZN9Scheduler15printAllThreadsEv+0x2c>
    printString("----------------end\n");
    80003248:	00007517          	auipc	a0,0x7
    8000324c:	1a850513          	addi	a0,a0,424 # 8000a3f0 <unknown_location+0x188>
    80003250:	00000097          	auipc	ra,0x0
    80003254:	5d0080e7          	jalr	1488(ra) # 80003820 <printString>
}
    80003258:	01813083          	ld	ra,24(sp)
    8000325c:	01013403          	ld	s0,16(sp)
    80003260:	00813483          	ld	s1,8(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	00008067          	ret

000000008000326c <_ZN9Scheduler21printAllSleepyThreadsEv>:
void Scheduler::printAllSleepyThreads() {
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	02010413          	addi	s0,sp,32
    printString("---------------\n");
    80003280:	00007517          	auipc	a0,0x7
    80003284:	18850513          	addi	a0,a0,392 # 8000a408 <unknown_location+0x1a0>
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	598080e7          	jalr	1432(ra) # 80003820 <printString>
    80003290:	0000a497          	auipc	s1,0xa
    80003294:	c584b483          	ld	s1,-936(s1) # 8000cee8 <_ZN9Scheduler15sleepingThreadsE>
    while (current != nullptr) {
    80003298:	04048663          	beqz	s1,800032e4 <_ZN9Scheduler21printAllSleepyThreadsEv+0x78>
        printHex((uint64)current->data->tcb);
    8000329c:	0004b783          	ld	a5,0(s1)
    800032a0:	0007a503          	lw	a0,0(a5)
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	764080e7          	jalr	1892(ra) # 80003a08 <printHex>
        printString(" - ");
    800032ac:	00007517          	auipc	a0,0x7
    800032b0:	17450513          	addi	a0,a0,372 # 8000a420 <unknown_location+0x1b8>
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	56c080e7          	jalr	1388(ra) # 80003820 <printString>
        printInteger(current->data->sleepTime);
    800032bc:	0004b783          	ld	a5,0(s1)
    800032c0:	0087a503          	lw	a0,8(a5)
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	5cc080e7          	jalr	1484(ra) # 80003890 <printInteger>
        printString("\n");
    800032cc:	00007517          	auipc	a0,0x7
    800032d0:	4e450513          	addi	a0,a0,1252 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	54c080e7          	jalr	1356(ra) # 80003820 <printString>
        current = current->next;
    800032dc:	0084b483          	ld	s1,8(s1)
    while (current != nullptr) {
    800032e0:	fb9ff06f          	j	80003298 <_ZN9Scheduler21printAllSleepyThreadsEv+0x2c>
    printString("---------------------\n");
    800032e4:	00007517          	auipc	a0,0x7
    800032e8:	14450513          	addi	a0,a0,324 # 8000a428 <unknown_location+0x1c0>
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	534080e7          	jalr	1332(ra) # 80003820 <printString>
}
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00813483          	ld	s1,8(sp)
    80003300:	02010113          	addi	sp,sp,32
    80003304:	00008067          	ret

0000000080003308 <_ZN9Scheduler10putToSleepEP3TCBi>:
void Scheduler::putToSleep(TCB *thread, int sleepTime) {
    80003308:	fd010113          	addi	sp,sp,-48
    8000330c:	02113423          	sd	ra,40(sp)
    80003310:	02813023          	sd	s0,32(sp)
    80003314:	00913c23          	sd	s1,24(sp)
    80003318:	01213823          	sd	s2,16(sp)
    8000331c:	01313423          	sd	s3,8(sp)
    80003320:	03010413          	addi	s0,sp,48
    80003324:	00050913          	mv	s2,a0
    80003328:	00058993          	mv	s3,a1
    8000332c:	0000a497          	auipc	s1,0xa
    80003330:	bac4b483          	ld	s1,-1108(s1) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003334:	06c0006f          	j	800033a0 <_ZN9Scheduler10putToSleepEP3TCBi+0x98>
        for(Elem *curr = head; curr; curr = curr->next) {
            if(curr == target) {
                if(prev) {
                    prev->next = curr->next;
                    if (curr == tail)
                        tail = prev;
    80003338:	0000a717          	auipc	a4,0xa
    8000333c:	baf73423          	sd	a5,-1112(a4) # 8000cee0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003340:	0540006f          	j	80003394 <_ZN9Scheduler10putToSleepEP3TCBi+0x8c>
                }
                else if(curr->next)
    80003344:	00853783          	ld	a5,8(a0)
    80003348:	00078863          	beqz	a5,80003358 <_ZN9Scheduler10putToSleepEP3TCBi+0x50>
                    head = curr->next;
    8000334c:	0000a717          	auipc	a4,0xa
    80003350:	b8f73623          	sd	a5,-1140(a4) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003354:	0400006f          	j	80003394 <_ZN9Scheduler10putToSleepEP3TCBi+0x8c>
                else
                    head = tail = 0;
    80003358:	0000a797          	auipc	a5,0xa
    8000335c:	b8078793          	addi	a5,a5,-1152 # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003360:	0007b423          	sd	zero,8(a5)
    80003364:	0007b023          	sd	zero,0(a5)
    80003368:	02c0006f          	j	80003394 <_ZN9Scheduler10putToSleepEP3TCBi+0x8c>

                delete curr;
                return;
            }
            prev = curr;
    8000336c:	00050793          	mv	a5,a0
        for(Elem *curr = head; curr; curr = curr->next) {
    80003370:	00853503          	ld	a0,8(a0)
    80003374:	02050463          	beqz	a0,8000339c <_ZN9Scheduler10putToSleepEP3TCBi+0x94>
            if(curr == target) {
    80003378:	fea49ae3          	bne	s1,a0,8000336c <_ZN9Scheduler10putToSleepEP3TCBi+0x64>
                if(prev) {
    8000337c:	fc0784e3          	beqz	a5,80003344 <_ZN9Scheduler10putToSleepEP3TCBi+0x3c>
                    prev->next = curr->next;
    80003380:	00853703          	ld	a4,8(a0)
    80003384:	00e7b423          	sd	a4,8(a5)
                    if (curr == tail)
    80003388:	0000a717          	auipc	a4,0xa
    8000338c:	b5873703          	ld	a4,-1192(a4) # 8000cee0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003390:	fae504e3          	beq	a0,a4,80003338 <_ZN9Scheduler10putToSleepEP3TCBi+0x30>
                delete curr;
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	f44080e7          	jalr	-188(ra) # 800022d8 <_ZdlPv>
       current = current->next;
    8000339c:	0084b483          	ld	s1,8(s1)
    while (current != nullptr) {
    800033a0:	00048e63          	beqz	s1,800033bc <_ZN9Scheduler10putToSleepEP3TCBi+0xb4>
       if(current->data == thread)
    800033a4:	0004b783          	ld	a5,0(s1)
    800033a8:	ff279ae3          	bne	a5,s2,8000339c <_ZN9Scheduler10putToSleepEP3TCBi+0x94>
        for(Elem *curr = head; curr; curr = curr->next) {
    800033ac:	0000a517          	auipc	a0,0xa
    800033b0:	b2c53503          	ld	a0,-1236(a0) # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
        Elem *prev = 0;
    800033b4:	00000793          	li	a5,0
    800033b8:	fbdff06f          	j	80003374 <_ZN9Scheduler10putToSleepEP3TCBi+0x6c>
        this->sleep = sleepy;
    800033bc:	00100793          	li	a5,1
    800033c0:	04f90923          	sb	a5,82(s2)
    sleepData *s = new sleepData(thread,sleepTime);
    800033c4:	01000513          	li	a0,16
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	ec0080e7          	jalr	-320(ra) # 80002288 <_Znwm>
    800033d0:	00050493          	mv	s1,a0
private:
    static List<TCB> readyCoroutineQueue;
    struct sleepData {
        TCB* tcb;
        int sleepTime;
        sleepData(TCB* tcb, int sleepTime) : tcb(tcb), sleepTime(sleepTime) {}
    800033d4:	01253023          	sd	s2,0(a0)
    800033d8:	01352423          	sw	s3,8(a0)
        Elem *elem = new Elem(data, 0);
    800033dc:	01000513          	li	a0,16
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	ea8080e7          	jalr	-344(ra) # 80002288 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800033e8:	00953023          	sd	s1,0(a0)
    800033ec:	00053423          	sd	zero,8(a0)
        if(tail) {
    800033f0:	0000a797          	auipc	a5,0xa
    800033f4:	b007b783          	ld	a5,-1280(a5) # 8000cef0 <_ZN9Scheduler15sleepingThreadsE+0x8>
    800033f8:	02078a63          	beqz	a5,8000342c <_ZN9Scheduler10putToSleepEP3TCBi+0x124>
            tail->next = elem;
    800033fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003400:	0000a797          	auipc	a5,0xa
    80003404:	aea7b823          	sd	a0,-1296(a5) # 8000cef0 <_ZN9Scheduler15sleepingThreadsE+0x8>
    TCB::dispatch();
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	950080e7          	jalr	-1712(ra) # 80002d58 <_ZN3TCB8dispatchEv>
}
    80003410:	02813083          	ld	ra,40(sp)
    80003414:	02013403          	ld	s0,32(sp)
    80003418:	01813483          	ld	s1,24(sp)
    8000341c:	01013903          	ld	s2,16(sp)
    80003420:	00813983          	ld	s3,8(sp)
    80003424:	03010113          	addi	sp,sp,48
    80003428:	00008067          	ret
            head = tail = elem;
    8000342c:	0000a797          	auipc	a5,0xa
    80003430:	aac78793          	addi	a5,a5,-1364 # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003434:	00a7bc23          	sd	a0,24(a5)
    80003438:	00a7b823          	sd	a0,16(a5)
    8000343c:	fcdff06f          	j	80003408 <_ZN9Scheduler10putToSleepEP3TCBi+0x100>

0000000080003440 <_ZN9Scheduler12handleWakingEv>:
void Scheduler::handleWaking() {
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00113c23          	sd	ra,24(sp)
    80003448:	00813823          	sd	s0,16(sp)
    8000344c:	00913423          	sd	s1,8(sp)
    80003450:	02010413          	addi	s0,sp,32
        if(!head)
    80003454:	0000a497          	auipc	s1,0xa
    80003458:	a944b483          	ld	s1,-1388(s1) # 8000cee8 <_ZN9Scheduler15sleepingThreadsE>
    8000345c:	0780006f          	j	800034d4 <_ZN9Scheduler12handleWakingEv+0x94>
                if(prev) {
    80003460:	04078063          	beqz	a5,800034a0 <_ZN9Scheduler12handleWakingEv+0x60>
                    prev->next = curr->next;
    80003464:	00853703          	ld	a4,8(a0)
    80003468:	00e7b423          	sd	a4,8(a5)
                    if (curr == tail)
    8000346c:	0000a717          	auipc	a4,0xa
    80003470:	a8473703          	ld	a4,-1404(a4) # 8000cef0 <_ZN9Scheduler15sleepingThreadsE+0x8>
    80003474:	02e50063          	beq	a0,a4,80003494 <_ZN9Scheduler12handleWakingEv+0x54>
                delete curr;
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	e60080e7          	jalr	-416(ra) # 800022d8 <_ZdlPv>
            delete current->data;
    80003480:	0004b503          	ld	a0,0(s1)
    80003484:	04050663          	beqz	a0,800034d0 <_ZN9Scheduler12handleWakingEv+0x90>
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	e50080e7          	jalr	-432(ra) # 800022d8 <_ZdlPv>
    80003490:	0400006f          	j	800034d0 <_ZN9Scheduler12handleWakingEv+0x90>
                        tail = prev;
    80003494:	0000a717          	auipc	a4,0xa
    80003498:	a4f73e23          	sd	a5,-1444(a4) # 8000cef0 <_ZN9Scheduler15sleepingThreadsE+0x8>
    8000349c:	fddff06f          	j	80003478 <_ZN9Scheduler12handleWakingEv+0x38>
                else if(curr->next)
    800034a0:	00853783          	ld	a5,8(a0)
    800034a4:	00078863          	beqz	a5,800034b4 <_ZN9Scheduler12handleWakingEv+0x74>
                    head = curr->next;
    800034a8:	0000a717          	auipc	a4,0xa
    800034ac:	a4f73023          	sd	a5,-1472(a4) # 8000cee8 <_ZN9Scheduler15sleepingThreadsE>
    800034b0:	fc9ff06f          	j	80003478 <_ZN9Scheduler12handleWakingEv+0x38>
                    head = tail = 0;
    800034b4:	0000a797          	auipc	a5,0xa
    800034b8:	a2478793          	addi	a5,a5,-1500 # 8000ced8 <_ZN9Scheduler19readyCoroutineQueueE>
    800034bc:	0007bc23          	sd	zero,24(a5)
    800034c0:	0007b823          	sd	zero,16(a5)
    800034c4:	fb5ff06f          	j	80003478 <_ZN9Scheduler12handleWakingEv+0x38>
            current->data->sleepTime -= 1;
    800034c8:	fff7879b          	addiw	a5,a5,-1
    800034cc:	00f72423          	sw	a5,8(a4)
        current = current->next;
    800034d0:	0084b483          	ld	s1,8(s1)
    while (current != nullptr) {
    800034d4:	04048463          	beqz	s1,8000351c <_ZN9Scheduler12handleWakingEv+0xdc>
        if(current->data->sleepTime <= 0) {
    800034d8:	0004b703          	ld	a4,0(s1)
    800034dc:	00872783          	lw	a5,8(a4)
    800034e0:	fef044e3          	bgtz	a5,800034c8 <_ZN9Scheduler12handleWakingEv+0x88>
            current->data->tcb->setSleepy(false);
    800034e4:	00073783          	ld	a5,0(a4)
    800034e8:	04078923          	sb	zero,82(a5)
            put(current->data->tcb);
    800034ec:	0004b783          	ld	a5,0(s1)
    800034f0:	0007b503          	ld	a0,0(a5)
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	c94080e7          	jalr	-876(ra) # 80003188 <_ZN9Scheduler3putEP3TCB>
        for(Elem *curr = head; curr; curr = curr->next) {
    800034fc:	0000a517          	auipc	a0,0xa
    80003500:	9ec53503          	ld	a0,-1556(a0) # 8000cee8 <_ZN9Scheduler15sleepingThreadsE>
        Elem *prev = 0;
    80003504:	00000793          	li	a5,0
        for(Elem *curr = head; curr; curr = curr->next) {
    80003508:	f6050ce3          	beqz	a0,80003480 <_ZN9Scheduler12handleWakingEv+0x40>
            if(curr == target) {
    8000350c:	f4a48ae3          	beq	s1,a0,80003460 <_ZN9Scheduler12handleWakingEv+0x20>
            prev = curr;
    80003510:	00050793          	mv	a5,a0
        for(Elem *curr = head; curr; curr = curr->next) {
    80003514:	00853503          	ld	a0,8(a0)
    80003518:	ff1ff06f          	j	80003508 <_ZN9Scheduler12handleWakingEv+0xc8>
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret

0000000080003530 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00113423          	sd	ra,8(sp)
    80003538:	00813023          	sd	s0,0(sp)
    8000353c:	01010413          	addi	s0,sp,16
    80003540:	000105b7          	lui	a1,0x10
    80003544:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003548:	00100513          	li	a0,1
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	b8c080e7          	jalr	-1140(ra) # 800030d8 <_Z41__static_initialization_and_destruction_0ii>
    80003554:	00813083          	ld	ra,8(sp)
    80003558:	00013403          	ld	s0,0(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN5BuffyC1Ei>:
#include "../h/buffer.hpp"

Buffy::Buffy(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003564:	fe010113          	addi	sp,sp,-32
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	01213023          	sd	s2,0(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050493          	mv	s1,a0
    80003580:	00058913          	mv	s2,a1
    80003584:	0015879b          	addiw	a5,a1,1
    80003588:	0007851b          	sext.w	a0,a5
    8000358c:	00f4a023          	sw	a5,0(s1)
    80003590:	0004a823          	sw	zero,16(s1)
    80003594:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)__mem_alloc(sizeof(int) * cap);
    80003598:	00251513          	slli	a0,a0,0x2
    8000359c:	00006097          	auipc	ra,0x6
    800035a0:	07c080e7          	jalr	124(ra) # 80009618 <__mem_alloc>
    800035a4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new sem(0);
    800035a8:	02800513          	li	a0,40
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	cdc080e7          	jalr	-804(ra) # 80002288 <_Znwm>
    800035b4:	00052423          	sw	zero,8(a0)
    800035b8:	00050623          	sb	zero,12(a0)
    800035bc:	00052823          	sw	zero,16(a0)
    List(): head(0), tail(0) {}
    800035c0:	00053c23          	sd	zero,24(a0)
    800035c4:	02053023          	sd	zero,32(a0)
    800035c8:	00a53023          	sd	a0,0(a0)
    800035cc:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = new sem(_cap);
    800035d0:	02800513          	li	a0,40
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	cb4080e7          	jalr	-844(ra) # 80002288 <_Znwm>
    800035dc:	01252423          	sw	s2,8(a0)
    800035e0:	00050623          	sb	zero,12(a0)
    800035e4:	00052823          	sw	zero,16(a0)
    800035e8:	00053c23          	sd	zero,24(a0)
    800035ec:	02053023          	sd	zero,32(a0)
    800035f0:	00a53023          	sd	a0,0(a0)
    800035f4:	00a4bc23          	sd	a0,24(s1)
    mutexHead = new sem(1);
    800035f8:	02800513          	li	a0,40
    800035fc:	fffff097          	auipc	ra,0xfffff
    80003600:	c8c080e7          	jalr	-884(ra) # 80002288 <_Znwm>
    80003604:	00100913          	li	s2,1
    80003608:	01252423          	sw	s2,8(a0)
    8000360c:	00050623          	sb	zero,12(a0)
    80003610:	00052823          	sw	zero,16(a0)
    80003614:	00053c23          	sd	zero,24(a0)
    80003618:	02053023          	sd	zero,32(a0)
    8000361c:	00a53023          	sd	a0,0(a0)
    80003620:	02a4b423          	sd	a0,40(s1)
    mutexTail = new sem(1);
    80003624:	02800513          	li	a0,40
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	c60080e7          	jalr	-928(ra) # 80002288 <_Znwm>
    80003630:	01252423          	sw	s2,8(a0)
    80003634:	00050623          	sb	zero,12(a0)
    80003638:	00052823          	sw	zero,16(a0)
    8000363c:	00053c23          	sd	zero,24(a0)
    80003640:	02053023          	sd	zero,32(a0)
    80003644:	00a53023          	sd	a0,0(a0)
    80003648:	02a4b823          	sd	a0,48(s1)
}
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	00013903          	ld	s2,0(sp)
    8000365c:	02010113          	addi	sp,sp,32
    80003660:	00008067          	ret

0000000080003664 <_ZN5Buffy3putEi>:
//    sem_close(spaceAvailable);
//    sem_close(mutexTail);
//    sem_close(mutexHead);
//}

void Buffy::put(int val) {
    80003664:	fe010113          	addi	sp,sp,-32
    80003668:	00113c23          	sd	ra,24(sp)
    8000366c:	00813823          	sd	s0,16(sp)
    80003670:	00913423          	sd	s1,8(sp)
    80003674:	01213023          	sd	s2,0(sp)
    80003678:	02010413          	addi	s0,sp,32
    8000367c:	00050493          	mv	s1,a0
    80003680:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003684:	01853503          	ld	a0,24(a0)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	7dc080e7          	jalr	2012(ra) # 80001e64 <_ZN3sem4waitEv>

    mutexTail->wait();
    80003690:	0304b503          	ld	a0,48(s1)
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	7d0080e7          	jalr	2000(ra) # 80001e64 <_ZN3sem4waitEv>
    buffer[tail] = val;
    8000369c:	0084b783          	ld	a5,8(s1)
    800036a0:	0144a703          	lw	a4,20(s1)
    800036a4:	00271713          	slli	a4,a4,0x2
    800036a8:	00e787b3          	add	a5,a5,a4
    800036ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800036b0:	0144a783          	lw	a5,20(s1)
    800036b4:	0017879b          	addiw	a5,a5,1
    800036b8:	0004a703          	lw	a4,0(s1)
    800036bc:	02e7e7bb          	remw	a5,a5,a4
    800036c0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal(false);
    800036c4:	00000593          	li	a1,0
    800036c8:	0304b503          	ld	a0,48(s1)
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	7e4080e7          	jalr	2020(ra) # 80001eb0 <_ZN3sem6signalEb>

    itemAvailable->signal(false);
    800036d4:	00000593          	li	a1,0
    800036d8:	0204b503          	ld	a0,32(s1)
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	7d4080e7          	jalr	2004(ra) # 80001eb0 <_ZN3sem6signalEb>

}
    800036e4:	01813083          	ld	ra,24(sp)
    800036e8:	01013403          	ld	s0,16(sp)
    800036ec:	00813483          	ld	s1,8(sp)
    800036f0:	00013903          	ld	s2,0(sp)
    800036f4:	02010113          	addi	sp,sp,32
    800036f8:	00008067          	ret

00000000800036fc <_ZN5Buffy3getEv>:

int Buffy::get() {
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00113c23          	sd	ra,24(sp)
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	01213023          	sd	s2,0(sp)
    80003710:	02010413          	addi	s0,sp,32
    80003714:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003718:	02053503          	ld	a0,32(a0)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	748080e7          	jalr	1864(ra) # 80001e64 <_ZN3sem4waitEv>

    mutexHead->wait();
    80003724:	0284b503          	ld	a0,40(s1)
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	73c080e7          	jalr	1852(ra) # 80001e64 <_ZN3sem4waitEv>

    int ret = buffer[head];
    80003730:	0084b703          	ld	a4,8(s1)
    80003734:	0104a783          	lw	a5,16(s1)
    80003738:	00279693          	slli	a3,a5,0x2
    8000373c:	00d70733          	add	a4,a4,a3
    80003740:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003744:	0017879b          	addiw	a5,a5,1
    80003748:	0004a703          	lw	a4,0(s1)
    8000374c:	02e7e7bb          	remw	a5,a5,a4
    80003750:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal(false);
    80003754:	00000593          	li	a1,0
    80003758:	0284b503          	ld	a0,40(s1)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	754080e7          	jalr	1876(ra) # 80001eb0 <_ZN3sem6signalEb>
    spaceAvailable->signal(false);
    80003764:	00000593          	li	a1,0
    80003768:	0184b503          	ld	a0,24(s1)
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	744080e7          	jalr	1860(ra) # 80001eb0 <_ZN3sem6signalEb>

    return ret;
}
    80003774:	00090513          	mv	a0,s2
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	00013903          	ld	s2,0(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret

0000000080003790 <_ZN5Buffy6getCntEv>:

int Buffy::getCnt() {
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00813823          	sd	s0,16(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	01213023          	sd	s2,0(sp)
    800037a4:	02010413          	addi	s0,sp,32
    800037a8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800037ac:	02853503          	ld	a0,40(a0)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	6b4080e7          	jalr	1716(ra) # 80001e64 <_ZN3sem4waitEv>
    mutexTail->wait();
    800037b8:	0304b503          	ld	a0,48(s1)
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	6a8080e7          	jalr	1704(ra) # 80001e64 <_ZN3sem4waitEv>

    if (tail >= head) {
    800037c4:	0144a783          	lw	a5,20(s1)
    800037c8:	0104a903          	lw	s2,16(s1)
    800037cc:	0527c263          	blt	a5,s2,80003810 <_ZN5Buffy6getCntEv+0x80>
        ret = tail - head;
    800037d0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal(true);
    800037d4:	00100593          	li	a1,1
    800037d8:	0304b503          	ld	a0,48(s1)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	6d4080e7          	jalr	1748(ra) # 80001eb0 <_ZN3sem6signalEb>
    mutexHead->signal(true);
    800037e4:	00100593          	li	a1,1
    800037e8:	0284b503          	ld	a0,40(s1)
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	6c4080e7          	jalr	1732(ra) # 80001eb0 <_ZN3sem6signalEb>

    return ret;
}
    800037f4:	00090513          	mv	a0,s2
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	00013903          	ld	s2,0(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret
        ret = cap - head + tail;
    80003810:	0004a703          	lw	a4,0(s1)
    80003814:	4127093b          	subw	s2,a4,s2
    80003818:	00f9093b          	addw	s2,s2,a5
    8000381c:	fb9ff06f          	j	800037d4 <_ZN5Buffy6getCntEv+0x44>

0000000080003820 <printString>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"

void printString(char const *string) {
    80003820:	fd010113          	addi	sp,sp,-48
    80003824:	02113423          	sd	ra,40(sp)
    80003828:	02813023          	sd	s0,32(sp)
    8000382c:	00913c23          	sd	s1,24(sp)
    80003830:	01213823          	sd	s2,16(sp)
    80003834:	03010413          	addi	s0,sp,48
    80003838:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000383c:	100027f3          	csrr	a5,sstatus
    80003840:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003844:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003848:	00200793          	li	a5,2
    8000384c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus(); //za zabranu prekida tokom ispisa da se ne bi nesto uzjebalo
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string != '\0') {
    80003850:	0004c503          	lbu	a0,0(s1)
    80003854:	00050a63          	beqz	a0,80003868 <printString+0x48>
        __putc(*string);
    80003858:	00006097          	auipc	ra,0x6
    8000385c:	f18080e7          	jalr	-232(ra) # 80009770 <__putc>
        string++;
    80003860:	00148493          	addi	s1,s1,1
    while(*string != '\0') {
    80003864:	fedff06f          	j	80003850 <printString+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003868:	0009091b          	sext.w	s2,s2
    8000386c:	00297913          	andi	s2,s2,2
    80003870:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003874:	10092073          	csrs	sstatus,s2
}
    80003878:	02813083          	ld	ra,40(sp)
    8000387c:	02013403          	ld	s0,32(sp)
    80003880:	01813483          	ld	s1,24(sp)
    80003884:	01013903          	ld	s2,16(sp)
    80003888:	03010113          	addi	sp,sp,48
    8000388c:	00008067          	ret

0000000080003890 <printInteger>:

void printInteger(uint64 integer) {
    80003890:	fc010113          	addi	sp,sp,-64
    80003894:	02113c23          	sd	ra,56(sp)
    80003898:	02813823          	sd	s0,48(sp)
    8000389c:	02913423          	sd	s1,40(sp)
    800038a0:	03213023          	sd	s2,32(sp)
    800038a4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800038a8:	100027f3          	csrr	a5,sstatus
    800038ac:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800038b0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800038b4:	00200793          	li	a5,2
    800038b8:	1007b073          	csrc	sstatus,a5
    neg = 0;
    if(integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    800038bc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800038c0:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % 10];
    800038c4:	00a00613          	li	a2,10
    800038c8:	02c5773b          	remuw	a4,a0,a2
    800038cc:	02071693          	slli	a3,a4,0x20
    800038d0:	0206d693          	srli	a3,a3,0x20
    800038d4:	00007717          	auipc	a4,0x7
    800038d8:	b8470713          	addi	a4,a4,-1148 # 8000a458 <_ZZ12printIntegerE6digits>
    800038dc:	00d70733          	add	a4,a4,a3
    800038e0:	00074703          	lbu	a4,0(a4)
    800038e4:	fe040693          	addi	a3,s0,-32
    800038e8:	009687b3          	add	a5,a3,s1
    800038ec:	0014849b          	addiw	s1,s1,1
    800038f0:	fee78823          	sb	a4,-16(a5)
    } while((x /= 10) != 0);
    800038f4:	0005071b          	sext.w	a4,a0
    800038f8:	02c5553b          	divuw	a0,a0,a2
    800038fc:	00900793          	li	a5,9
    80003900:	fce7e2e3          	bltu	a5,a4,800038c4 <printInteger+0x34>
    if(neg)
        buf[i++] = '-';
    while(--i >= 0)
    80003904:	fff4849b          	addiw	s1,s1,-1
    80003908:	0004ce63          	bltz	s1,80003924 <printInteger+0x94>
        __putc(buf[i]);
    8000390c:	fe040793          	addi	a5,s0,-32
    80003910:	009787b3          	add	a5,a5,s1
    80003914:	ff07c503          	lbu	a0,-16(a5)
    80003918:	00006097          	auipc	ra,0x6
    8000391c:	e58080e7          	jalr	-424(ra) # 80009770 <__putc>
    80003920:	fe5ff06f          	j	80003904 <printInteger+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003924:	0009091b          	sext.w	s2,s2
    80003928:	00297913          	andi	s2,s2,2
    8000392c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003930:	10092073          	csrs	sstatus,s2
}
    80003934:	03813083          	ld	ra,56(sp)
    80003938:	03013403          	ld	s0,48(sp)
    8000393c:	02813483          	ld	s1,40(sp)
    80003940:	02013903          	ld	s2,32(sp)
    80003944:	04010113          	addi	sp,sp,64
    80003948:	00008067          	ret

000000008000394c <_Z13SprintIntegerm>:

void SprintInteger(uint64 integer) {
    8000394c:	fc010113          	addi	sp,sp,-64
    80003950:	02113c23          	sd	ra,56(sp)
    80003954:	02813823          	sd	s0,48(sp)
    80003958:	02913423          	sd	s1,40(sp)
    8000395c:	03213023          	sd	s2,32(sp)
    80003960:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003964:	100027f3          	csrr	a5,sstatus
    80003968:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000396c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003970:	00200793          	li	a5,2
    80003974:	1007b073          	csrc	sstatus,a5
    uint x;
    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    80003978:	0005051b          	sext.w	a0,a0
    }
    i = 0;
    8000397c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % 10];
    80003980:	00a00613          	li	a2,10
    80003984:	02c5773b          	remuw	a4,a0,a2
    80003988:	02071693          	slli	a3,a4,0x20
    8000398c:	0206d693          	srli	a3,a3,0x20
    80003990:	00007717          	auipc	a4,0x7
    80003994:	ac870713          	addi	a4,a4,-1336 # 8000a458 <_ZZ12printIntegerE6digits>
    80003998:	00d70733          	add	a4,a4,a3
    8000399c:	01074703          	lbu	a4,16(a4)
    800039a0:	fe040693          	addi	a3,s0,-32
    800039a4:	009687b3          	add	a5,a3,s1
    800039a8:	0014849b          	addiw	s1,s1,1
    800039ac:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800039b0:	0005071b          	sext.w	a4,a0
    800039b4:	02c5553b          	divuw	a0,a0,a2
    800039b8:	00900793          	li	a5,9
    800039bc:	fce7e2e3          	bltu	a5,a4,80003980 <_Z13SprintIntegerm+0x34>
    if (neg)
        buf[i++] = '-';
    while (--i >= 0)
    800039c0:	fff4849b          	addiw	s1,s1,-1
    800039c4:	0004ce63          	bltz	s1,800039e0 <_Z13SprintIntegerm+0x94>
        __putc(buf[i]);
    800039c8:	fe040793          	addi	a5,s0,-32
    800039cc:	009787b3          	add	a5,a5,s1
    800039d0:	ff07c503          	lbu	a0,-16(a5)
    800039d4:	00006097          	auipc	ra,0x6
    800039d8:	d9c080e7          	jalr	-612(ra) # 80009770 <__putc>
    800039dc:	fe5ff06f          	j	800039c0 <_Z13SprintIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800039e0:	0009091b          	sext.w	s2,s2
    800039e4:	00297913          	andi	s2,s2,2
    800039e8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800039ec:	10092073          	csrs	sstatus,s2
}
    800039f0:	03813083          	ld	ra,56(sp)
    800039f4:	03013403          	ld	s0,48(sp)
    800039f8:	02813483          	ld	s1,40(sp)
    800039fc:	02013903          	ld	s2,32(sp)
    80003a00:	04010113          	addi	sp,sp,64
    80003a04:	00008067          	ret

0000000080003a08 <printHex>:





void printHex(int xx) {
    80003a08:	fb010113          	addi	sp,sp,-80
    80003a0c:	04113423          	sd	ra,72(sp)
    80003a10:	04813023          	sd	s0,64(sp)
    80003a14:	02913c23          	sd	s1,56(sp)
    80003a18:	05010413          	addi	s0,sp,80
    int sgn = 0;
    int base = 16;
    char digits[] = "0123456789ABCDEF";
    80003a1c:	00007797          	auipc	a5,0x7
    80003a20:	a2478793          	addi	a5,a5,-1500 # 8000a440 <unknown_location+0x1d8>
    80003a24:	0007b703          	ld	a4,0(a5)
    80003a28:	fce43423          	sd	a4,-56(s0)
    80003a2c:	0087b703          	ld	a4,8(a5)
    80003a30:	fce43823          	sd	a4,-48(s0)
    80003a34:	0107c783          	lbu	a5,16(a5)
    80003a38:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003a3c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a40:	00f57713          	andi	a4,a0,15
    80003a44:	fe040693          	addi	a3,s0,-32
    80003a48:	00e68733          	add	a4,a3,a4
    80003a4c:	fe874703          	lbu	a4,-24(a4)
    80003a50:	009687b3          	add	a5,a3,s1
    80003a54:	0014849b          	addiw	s1,s1,1
    80003a58:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003a5c:	0005071b          	sext.w	a4,a0
    80003a60:	0045551b          	srliw	a0,a0,0x4
    80003a64:	00f00793          	li	a5,15
    80003a68:	fce7ece3          	bltu	a5,a4,80003a40 <printHex+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003a6c:	fff4849b          	addiw	s1,s1,-1
    80003a70:	0004ce63          	bltz	s1,80003a8c <printHex+0x84>
        __putc(buf[i]);
    80003a74:	fe040793          	addi	a5,s0,-32
    80003a78:	009787b3          	add	a5,a5,s1
    80003a7c:	fd87c503          	lbu	a0,-40(a5)
    80003a80:	00006097          	auipc	ra,0x6
    80003a84:	cf0080e7          	jalr	-784(ra) # 80009770 <__putc>
    80003a88:	fe5ff06f          	j	80003a6c <printHex+0x64>

    80003a8c:	04813083          	ld	ra,72(sp)
    80003a90:	04013403          	ld	s0,64(sp)
    80003a94:	03813483          	ld	s1,56(sp)
    80003a98:	05010113          	addi	sp,sp,80
    80003a9c:	00008067          	ret

0000000080003aa0 <_ZN6Memory4initEv>:

size_t Memory::numOfBlocks = 0;
int* Memory::memMap = 0;
void* Memory::startHeap = 0;

void Memory::init() {
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    numOfBlocks = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) / (MEM_BLOCK_SIZE + sizeof(int)) - 1;
    80003aac:	00009797          	auipc	a5,0x9
    80003ab0:	3647b783          	ld	a5,868(a5) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ab4:	0007b683          	ld	a3,0(a5)
    80003ab8:	00009797          	auipc	a5,0x9
    80003abc:	3907b783          	ld	a5,912(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003ac0:	0007b783          	ld	a5,0(a5)
    80003ac4:	40d787b3          	sub	a5,a5,a3
    80003ac8:	04400713          	li	a4,68
    80003acc:	02e7d7b3          	divu	a5,a5,a4
    80003ad0:	fff78793          	addi	a5,a5,-1
    80003ad4:	00009617          	auipc	a2,0x9
    80003ad8:	42460613          	addi	a2,a2,1060 # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003adc:	00f63023          	sd	a5,0(a2)
    memMap = (int*) HEAP_START_ADDR;
    80003ae0:	00d63423          	sd	a3,8(a2)
    startHeap = (char*) HEAP_START_ADDR + numOfBlocks * sizeof(int);
    80003ae4:	00279713          	slli	a4,a5,0x2
    80003ae8:	00e68733          	add	a4,a3,a4
    startHeap = (char*) startHeap + (MEM_BLOCK_SIZE - (uint64) startHeap % MEM_BLOCK_SIZE); //poravnavanje startHeap na memblock
    80003aec:	03f77513          	andi	a0,a4,63
    80003af0:	04000593          	li	a1,64
    80003af4:	40a585b3          	sub	a1,a1,a0
    80003af8:	00b70733          	add	a4,a4,a1
    80003afc:	00e63823          	sd	a4,16(a2)
    memMap[0] = numOfBlocks;
    80003b00:	00f6a023          	sw	a5,0(a3)
    for(size_t i = 1; i < numOfBlocks; i++) {
    80003b04:	00100793          	li	a5,1
    80003b08:	00009717          	auipc	a4,0x9
    80003b0c:	3f073703          	ld	a4,1008(a4) # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003b10:	02e7f063          	bgeu	a5,a4,80003b30 <_ZN6Memory4initEv+0x90>
        memMap[i] = 0;
    80003b14:	00279693          	slli	a3,a5,0x2
    80003b18:	00009717          	auipc	a4,0x9
    80003b1c:	3e873703          	ld	a4,1000(a4) # 8000cf00 <_ZN6Memory6memMapE>
    80003b20:	00d70733          	add	a4,a4,a3
    80003b24:	00072023          	sw	zero,0(a4)
    for(size_t i = 1; i < numOfBlocks; i++) {
    80003b28:	00178793          	addi	a5,a5,1
    80003b2c:	fddff06f          	j	80003b08 <_ZN6Memory4initEv+0x68>
    }
}
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <_ZN6Memory9mem_allocEm>:

void* Memory::mem_alloc (size_t size) {
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    size = size / MEM_BLOCK_SIZE + ((size % MEM_BLOCK_SIZE != 0) ? 1 : 0);
    80003b48:	00655793          	srli	a5,a0,0x6
    80003b4c:	03f57513          	andi	a0,a0,63
    80003b50:	00050463          	beqz	a0,80003b58 <_ZN6Memory9mem_allocEm+0x1c>
    80003b54:	00100513          	li	a0,1
    80003b58:	00a78533          	add	a0,a5,a0
    if (size<=0 || size>numOfBlocks) return nullptr; // Exception
    80003b5c:	06050e63          	beqz	a0,80003bd8 <_ZN6Memory9mem_allocEm+0x9c>
    80003b60:	00009817          	auipc	a6,0x9
    80003b64:	39883803          	ld	a6,920(a6) # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003b68:	06a86c63          	bltu	a6,a0,80003be0 <_ZN6Memory9mem_allocEm+0xa4>
    for (size_t i=0; i<numOfBlocks; i++)
    80003b6c:	00000793          	li	a5,0
    80003b70:	0707fc63          	bgeu	a5,a6,80003be8 <_ZN6Memory9mem_allocEm+0xac>
        if (memMap[i]>= (int) size) {
    80003b74:	00009697          	auipc	a3,0x9
    80003b78:	38c6b683          	ld	a3,908(a3) # 8000cf00 <_ZN6Memory6memMapE>
    80003b7c:	00279613          	slli	a2,a5,0x2
    80003b80:	00c68733          	add	a4,a3,a2
    80003b84:	00072703          	lw	a4,0(a4)
    80003b88:	0005059b          	sext.w	a1,a0
    80003b8c:	00b75663          	bge	a4,a1,80003b98 <_ZN6Memory9mem_allocEm+0x5c>
    for (size_t i=0; i<numOfBlocks; i++)
    80003b90:	00178793          	addi	a5,a5,1
    80003b94:	fddff06f          	j	80003b70 <_ZN6Memory9mem_allocEm+0x34>
            if (memMap[i]>(int) size) memMap[i+size] = memMap[i]-size;
    80003b98:	00e5dc63          	bge	a1,a4,80003bb0 <_ZN6Memory9mem_allocEm+0x74>
    80003b9c:	00a785b3          	add	a1,a5,a0
    80003ba0:	00259593          	slli	a1,a1,0x2
    80003ba4:	00b686b3          	add	a3,a3,a1
    80003ba8:	40a7073b          	subw	a4,a4,a0
    80003bac:	00e6a023          	sw	a4,0(a3)
            memMap[i] = -size;
    80003bb0:	00009697          	auipc	a3,0x9
    80003bb4:	34868693          	addi	a3,a3,840 # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003bb8:	0086b703          	ld	a4,8(a3)
    80003bbc:	00c70633          	add	a2,a4,a2
    80003bc0:	40a0053b          	negw	a0,a0
    80003bc4:	00a62023          	sw	a0,0(a2)
            return ((char*)startHeap + i * MEM_BLOCK_SIZE); //x = startheap + i * memblocksize
    80003bc8:	0106b503          	ld	a0,16(a3)
    80003bcc:	00679793          	slli	a5,a5,0x6
    80003bd0:	00f50533          	add	a0,a0,a5
    80003bd4:	0180006f          	j	80003bec <_ZN6Memory9mem_allocEm+0xb0>
    if (size<=0 || size>numOfBlocks) return nullptr; // Exception
    80003bd8:	00000513          	li	a0,0
    80003bdc:	0100006f          	j	80003bec <_ZN6Memory9mem_allocEm+0xb0>
    80003be0:	00000513          	li	a0,0
    80003be4:	0080006f          	j	80003bec <_ZN6Memory9mem_allocEm+0xb0>
                                                            //i = x - startheap)/memblocksize
        };
    return nullptr; // No free mem
    80003be8:	00000513          	li	a0,0
}
    80003bec:	00813403          	ld	s0,8(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <_ZN6Memory18mem_get_free_spaceEv>:

size_t Memory::mem_get_free_space() {
    80003bf8:	ff010113          	addi	sp,sp,-16
    80003bfc:	00813423          	sd	s0,8(sp)
    80003c00:	01010413          	addi	s0,sp,16
    size_t freeSpace = 0;
    for (size_t i=0; i<numOfBlocks; i++)
    80003c04:	00000793          	li	a5,0
    size_t freeSpace = 0;
    80003c08:	00000513          	li	a0,0
    80003c0c:	0080006f          	j	80003c14 <_ZN6Memory18mem_get_free_spaceEv+0x1c>
    for (size_t i=0; i<numOfBlocks; i++)
    80003c10:	00178793          	addi	a5,a5,1
    80003c14:	00009717          	auipc	a4,0x9
    80003c18:	2e473703          	ld	a4,740(a4) # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003c1c:	02e7f263          	bgeu	a5,a4,80003c40 <_ZN6Memory18mem_get_free_spaceEv+0x48>
        if(memMap[i] > 0)
    80003c20:	00279713          	slli	a4,a5,0x2
    80003c24:	00009697          	auipc	a3,0x9
    80003c28:	2dc6b683          	ld	a3,732(a3) # 8000cf00 <_ZN6Memory6memMapE>
    80003c2c:	00e68733          	add	a4,a3,a4
    80003c30:	00072703          	lw	a4,0(a4)
    80003c34:	fce05ee3          	blez	a4,80003c10 <_ZN6Memory18mem_get_free_spaceEv+0x18>
            freeSpace += (size_t) memMap[i];
    80003c38:	00e50533          	add	a0,a0,a4
    80003c3c:	fd5ff06f          	j	80003c10 <_ZN6Memory18mem_get_free_spaceEv+0x18>

    freeSpace *= MEM_BLOCK_SIZE;
    return freeSpace;
}
    80003c40:	00651513          	slli	a0,a0,0x6
    80003c44:	00813403          	ld	s0,8(sp)
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00008067          	ret

0000000080003c50 <_ZN6Memory26mem_get_largest_free_blockEv>:

size_t Memory::mem_get_largest_free_block() {
    80003c50:	ff010113          	addi	sp,sp,-16
    80003c54:	00813423          	sd	s0,8(sp)
    80003c58:	01010413          	addi	s0,sp,16
    size_t largestBlock = 0;

    for (size_t i=0; i<numOfBlocks; i++)
    80003c5c:	00000793          	li	a5,0
    size_t largestBlock = 0;
    80003c60:	00000513          	li	a0,0
    80003c64:	0080006f          	j	80003c6c <_ZN6Memory26mem_get_largest_free_blockEv+0x1c>
    for (size_t i=0; i<numOfBlocks; i++)
    80003c68:	00178793          	addi	a5,a5,1
    80003c6c:	00009717          	auipc	a4,0x9
    80003c70:	28c73703          	ld	a4,652(a4) # 8000cef8 <_ZN6Memory11numOfBlocksE>
    80003c74:	02e7f263          	bgeu	a5,a4,80003c98 <_ZN6Memory26mem_get_largest_free_blockEv+0x48>
        if((size_t) memMap[i] > largestBlock)
    80003c78:	00279713          	slli	a4,a5,0x2
    80003c7c:	00009697          	auipc	a3,0x9
    80003c80:	2846b683          	ld	a3,644(a3) # 8000cf00 <_ZN6Memory6memMapE>
    80003c84:	00e68733          	add	a4,a3,a4
    80003c88:	00072703          	lw	a4,0(a4)
    80003c8c:	fce57ee3          	bgeu	a0,a4,80003c68 <_ZN6Memory26mem_get_largest_free_blockEv+0x18>
            largestBlock = (size_t) memMap[i];
    80003c90:	00070513          	mv	a0,a4
    80003c94:	fd5ff06f          	j	80003c68 <_ZN6Memory26mem_get_largest_free_blockEv+0x18>

    largestBlock *= MEM_BLOCK_SIZE;
    return largestBlock;
}
    80003c98:	00651513          	slli	a0,a0,0x6
    80003c9c:	00813403          	ld	s0,8(sp)
    80003ca0:	01010113          	addi	sp,sp,16
    80003ca4:	00008067          	ret

0000000080003ca8 <_ZN6Memory8mem_freeEPv>:

int Memory::mem_free(void *ptr) {
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00813423          	sd	s0,8(sp)
    80003cb0:	01010413          	addi	s0,sp,16
    if(ptr < startHeap || ptr > HEAP_END_ADDR) return -1; //free na memoriju van opsega GRESKA
    80003cb4:	00009717          	auipc	a4,0x9
    80003cb8:	25473703          	ld	a4,596(a4) # 8000cf08 <_ZN6Memory9startHeapE>
    80003cbc:	0ee56063          	bltu	a0,a4,80003d9c <_ZN6Memory8mem_freeEPv+0xf4>
    80003cc0:	00009797          	auipc	a5,0x9
    80003cc4:	1887b783          	ld	a5,392(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003cc8:	0007b783          	ld	a5,0(a5)
    80003ccc:	0ca7ec63          	bltu	a5,a0,80003da4 <_ZN6Memory8mem_freeEPv+0xfc>
    if((uint64) ptr % MEM_BLOCK_SIZE != 0 ) return -2; //free na NEPORAVNAT pokazivac (sredinu mem blocka, NE MOZE)
    80003cd0:	03f57793          	andi	a5,a0,63
    80003cd4:	0c079c63          	bnez	a5,80003dac <_ZN6Memory8mem_freeEPv+0x104>

    int entry = ((uint64) ptr - (uint64)startHeap) / MEM_BLOCK_SIZE;
    80003cd8:	40e50733          	sub	a4,a0,a4
    80003cdc:	00675713          	srli	a4,a4,0x6
    80003ce0:	0007071b          	sext.w	a4,a4
    if(memMap[entry] >= 0) return -3; //free na nealociranu memoriju GRESKA
    80003ce4:	00271513          	slli	a0,a4,0x2
    80003ce8:	00009797          	auipc	a5,0x9
    80003cec:	2187b783          	ld	a5,536(a5) # 8000cf00 <_ZN6Memory6memMapE>
    80003cf0:	00a787b3          	add	a5,a5,a0
    80003cf4:	0007a683          	lw	a3,0(a5)
    80003cf8:	0a06de63          	bgez	a3,80003db4 <_ZN6Memory8mem_freeEPv+0x10c>

    memMap[entry] = -memMap[entry];
    80003cfc:	40d006bb          	negw	a3,a3
    80003d00:	00d7a023          	sw	a3,0(a5)
    //right join
    if(memMap[entry + memMap[entry]] > 0) {
    80003d04:	00009797          	auipc	a5,0x9
    80003d08:	1fc7b783          	ld	a5,508(a5) # 8000cf00 <_ZN6Memory6memMapE>
    80003d0c:	00a785b3          	add	a1,a5,a0
    80003d10:	0005a603          	lw	a2,0(a1)
    80003d14:	00e606bb          	addw	a3,a2,a4
    80003d18:	00269693          	slli	a3,a3,0x2
    80003d1c:	00d787b3          	add	a5,a5,a3
    80003d20:	0007a783          	lw	a5,0(a5)
    80003d24:	00f05e63          	blez	a5,80003d40 <_ZN6Memory8mem_freeEPv+0x98>
        int pomeraj = entry + memMap[entry];
        memMap[entry] += memMap[pomeraj];
    80003d28:	00f6063b          	addw	a2,a2,a5
    80003d2c:	00c5a023          	sw	a2,0(a1)
        memMap[pomeraj] = 0;
    80003d30:	00009797          	auipc	a5,0x9
    80003d34:	1d07b783          	ld	a5,464(a5) # 8000cf00 <_ZN6Memory6memMapE>
    80003d38:	00d786b3          	add	a3,a5,a3
    80003d3c:	0006a023          	sw	zero,0(a3)
    }

    //left join
    int i = 0;
    80003d40:	00000593          	li	a1,0
    while(memMap[entry + --i] == 0);
    80003d44:	00009617          	auipc	a2,0x9
    80003d48:	1bc63603          	ld	a2,444(a2) # 8000cf00 <_ZN6Memory6memMapE>
    80003d4c:	fff5879b          	addiw	a5,a1,-1
    80003d50:	0007859b          	sext.w	a1,a5
    80003d54:	00e787bb          	addw	a5,a5,a4
    80003d58:	00279793          	slli	a5,a5,0x2
    80003d5c:	00f607b3          	add	a5,a2,a5
    80003d60:	0007a683          	lw	a3,0(a5)
    80003d64:	fe0680e3          	beqz	a3,80003d44 <_ZN6Memory8mem_freeEPv+0x9c>
    if(memMap[entry + i] > 0) {
    80003d68:	04d05a63          	blez	a3,80003dbc <_ZN6Memory8mem_freeEPv+0x114>
        int pomeraj = entry + i;
        memMap[pomeraj] += memMap[entry];
    80003d6c:	00a60633          	add	a2,a2,a0
    80003d70:	00062703          	lw	a4,0(a2)
    80003d74:	00e686bb          	addw	a3,a3,a4
    80003d78:	00d7a023          	sw	a3,0(a5)
        memMap[entry] = 0;
    80003d7c:	00009797          	auipc	a5,0x9
    80003d80:	1847b783          	ld	a5,388(a5) # 8000cf00 <_ZN6Memory6memMapE>
    80003d84:	00a78533          	add	a0,a5,a0
    80003d88:	00052023          	sw	zero,0(a0)
    }

    return 0;
    80003d8c:	00000513          	li	a0,0
}
    80003d90:	00813403          	ld	s0,8(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    if(ptr < startHeap || ptr > HEAP_END_ADDR) return -1; //free na memoriju van opsega GRESKA
    80003d9c:	fff00513          	li	a0,-1
    80003da0:	ff1ff06f          	j	80003d90 <_ZN6Memory8mem_freeEPv+0xe8>
    80003da4:	fff00513          	li	a0,-1
    80003da8:	fe9ff06f          	j	80003d90 <_ZN6Memory8mem_freeEPv+0xe8>
    if((uint64) ptr % MEM_BLOCK_SIZE != 0 ) return -2; //free na NEPORAVNAT pokazivac (sredinu mem blocka, NE MOZE)
    80003dac:	ffe00513          	li	a0,-2
    80003db0:	fe1ff06f          	j	80003d90 <_ZN6Memory8mem_freeEPv+0xe8>
    if(memMap[entry] >= 0) return -3; //free na nealociranu memoriju GRESKA
    80003db4:	ffd00513          	li	a0,-3
    80003db8:	fd9ff06f          	j	80003d90 <_ZN6Memory8mem_freeEPv+0xe8>
    return 0;
    80003dbc:	00000513          	li	a0,0
    80003dc0:	fd1ff06f          	j	80003d90 <_ZN6Memory8mem_freeEPv+0xe8>

0000000080003dc4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003dc4:	fe010113          	addi	sp,sp,-32
    80003dc8:	00113c23          	sd	ra,24(sp)
    80003dcc:	00813823          	sd	s0,16(sp)
    80003dd0:	00913423          	sd	s1,8(sp)
    80003dd4:	01213023          	sd	s2,0(sp)
    80003dd8:	02010413          	addi	s0,sp,32
    80003ddc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003de0:	00000913          	li	s2,0
    80003de4:	00c0006f          	j	80003df0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	b64080e7          	jalr	-1180(ra) # 8000194c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	c18080e7          	jalr	-1000(ra) # 80001a08 <_Z4getcv>
    80003df8:	0005059b          	sext.w	a1,a0
    80003dfc:	01b00793          	li	a5,27
    80003e00:	02f58a63          	beq	a1,a5,80003e34 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003e04:	0084b503          	ld	a0,8(s1)
    80003e08:	00003097          	auipc	ra,0x3
    80003e0c:	400080e7          	jalr	1024(ra) # 80007208 <_ZN6Buffer3putEi>
        i++;
    80003e10:	0019071b          	addiw	a4,s2,1
    80003e14:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003e18:	0004a683          	lw	a3,0(s1)
    80003e1c:	0026979b          	slliw	a5,a3,0x2
    80003e20:	00d787bb          	addw	a5,a5,a3
    80003e24:	0017979b          	slliw	a5,a5,0x1
    80003e28:	02f767bb          	remw	a5,a4,a5
    80003e2c:	fc0792e3          	bnez	a5,80003df0 <_ZL16producerKeyboardPv+0x2c>
    80003e30:	fb9ff06f          	j	80003de8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003e34:	00100793          	li	a5,1
    80003e38:	00009717          	auipc	a4,0x9
    80003e3c:	0cf72c23          	sw	a5,216(a4) # 8000cf10 <_ZL9threadEnd>
    data->buffer->put('!');
    80003e40:	02100593          	li	a1,33
    80003e44:	0084b503          	ld	a0,8(s1)
    80003e48:	00003097          	auipc	ra,0x3
    80003e4c:	3c0080e7          	jalr	960(ra) # 80007208 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003e50:	0104b503          	ld	a0,16(s1)
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	cf4080e7          	jalr	-780(ra) # 80001b48 <_Z10sem_signalP3sem>
}
    80003e5c:	01813083          	ld	ra,24(sp)
    80003e60:	01013403          	ld	s0,16(sp)
    80003e64:	00813483          	ld	s1,8(sp)
    80003e68:	00013903          	ld	s2,0(sp)
    80003e6c:	02010113          	addi	sp,sp,32
    80003e70:	00008067          	ret

0000000080003e74 <_ZL8producerPv>:

static void producer(void *arg) {
    80003e74:	fe010113          	addi	sp,sp,-32
    80003e78:	00113c23          	sd	ra,24(sp)
    80003e7c:	00813823          	sd	s0,16(sp)
    80003e80:	00913423          	sd	s1,8(sp)
    80003e84:	01213023          	sd	s2,0(sp)
    80003e88:	02010413          	addi	s0,sp,32
    80003e8c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003e90:	00000913          	li	s2,0
    80003e94:	00c0006f          	j	80003ea0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	ab4080e7          	jalr	-1356(ra) # 8000194c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003ea0:	00009797          	auipc	a5,0x9
    80003ea4:	0707a783          	lw	a5,112(a5) # 8000cf10 <_ZL9threadEnd>
    80003ea8:	02079e63          	bnez	a5,80003ee4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003eac:	0004a583          	lw	a1,0(s1)
    80003eb0:	0305859b          	addiw	a1,a1,48
    80003eb4:	0084b503          	ld	a0,8(s1)
    80003eb8:	00003097          	auipc	ra,0x3
    80003ebc:	350080e7          	jalr	848(ra) # 80007208 <_ZN6Buffer3putEi>
        i++;
    80003ec0:	0019071b          	addiw	a4,s2,1
    80003ec4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003ec8:	0004a683          	lw	a3,0(s1)
    80003ecc:	0026979b          	slliw	a5,a3,0x2
    80003ed0:	00d787bb          	addw	a5,a5,a3
    80003ed4:	0017979b          	slliw	a5,a5,0x1
    80003ed8:	02f767bb          	remw	a5,a4,a5
    80003edc:	fc0792e3          	bnez	a5,80003ea0 <_ZL8producerPv+0x2c>
    80003ee0:	fb9ff06f          	j	80003e98 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003ee4:	0104b503          	ld	a0,16(s1)
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	c60080e7          	jalr	-928(ra) # 80001b48 <_Z10sem_signalP3sem>
}
    80003ef0:	01813083          	ld	ra,24(sp)
    80003ef4:	01013403          	ld	s0,16(sp)
    80003ef8:	00813483          	ld	s1,8(sp)
    80003efc:	00013903          	ld	s2,0(sp)
    80003f00:	02010113          	addi	sp,sp,32
    80003f04:	00008067          	ret

0000000080003f08 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003f08:	fd010113          	addi	sp,sp,-48
    80003f0c:	02113423          	sd	ra,40(sp)
    80003f10:	02813023          	sd	s0,32(sp)
    80003f14:	00913c23          	sd	s1,24(sp)
    80003f18:	01213823          	sd	s2,16(sp)
    80003f1c:	01313423          	sd	s3,8(sp)
    80003f20:	03010413          	addi	s0,sp,48
    80003f24:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003f28:	00000993          	li	s3,0
    80003f2c:	01c0006f          	j	80003f48 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	a1c080e7          	jalr	-1508(ra) # 8000194c <_Z15thread_dispatchv>
    80003f38:	0500006f          	j	80003f88 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003f3c:	00a00513          	li	a0,10
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	b08080e7          	jalr	-1272(ra) # 80001a48 <_Z4putcc>
    while (!threadEnd) {
    80003f48:	00009797          	auipc	a5,0x9
    80003f4c:	fc87a783          	lw	a5,-56(a5) # 8000cf10 <_ZL9threadEnd>
    80003f50:	06079063          	bnez	a5,80003fb0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003f54:	00893503          	ld	a0,8(s2)
    80003f58:	00003097          	auipc	ra,0x3
    80003f5c:	340080e7          	jalr	832(ra) # 80007298 <_ZN6Buffer3getEv>
        i++;
    80003f60:	0019849b          	addiw	s1,s3,1
    80003f64:	0004899b          	sext.w	s3,s1
        putc(key);
    80003f68:	0ff57513          	andi	a0,a0,255
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	adc080e7          	jalr	-1316(ra) # 80001a48 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003f74:	00092703          	lw	a4,0(s2)
    80003f78:	0027179b          	slliw	a5,a4,0x2
    80003f7c:	00e787bb          	addw	a5,a5,a4
    80003f80:	02f4e7bb          	remw	a5,s1,a5
    80003f84:	fa0786e3          	beqz	a5,80003f30 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003f88:	05000793          	li	a5,80
    80003f8c:	02f4e4bb          	remw	s1,s1,a5
    80003f90:	fa049ce3          	bnez	s1,80003f48 <_ZL8consumerPv+0x40>
    80003f94:	fa9ff06f          	j	80003f3c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003f98:	00893503          	ld	a0,8(s2)
    80003f9c:	00003097          	auipc	ra,0x3
    80003fa0:	2fc080e7          	jalr	764(ra) # 80007298 <_ZN6Buffer3getEv>
        putc(key);
    80003fa4:	0ff57513          	andi	a0,a0,255
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	aa0080e7          	jalr	-1376(ra) # 80001a48 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003fb0:	00893503          	ld	a0,8(s2)
    80003fb4:	00003097          	auipc	ra,0x3
    80003fb8:	370080e7          	jalr	880(ra) # 80007324 <_ZN6Buffer6getCntEv>
    80003fbc:	fca04ee3          	bgtz	a0,80003f98 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003fc0:	01093503          	ld	a0,16(s2)
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	b84080e7          	jalr	-1148(ra) # 80001b48 <_Z10sem_signalP3sem>
}
    80003fcc:	02813083          	ld	ra,40(sp)
    80003fd0:	02013403          	ld	s0,32(sp)
    80003fd4:	01813483          	ld	s1,24(sp)
    80003fd8:	01013903          	ld	s2,16(sp)
    80003fdc:	00813983          	ld	s3,8(sp)
    80003fe0:	03010113          	addi	sp,sp,48
    80003fe4:	00008067          	ret

0000000080003fe8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003fe8:	f9010113          	addi	sp,sp,-112
    80003fec:	06113423          	sd	ra,104(sp)
    80003ff0:	06813023          	sd	s0,96(sp)
    80003ff4:	04913c23          	sd	s1,88(sp)
    80003ff8:	05213823          	sd	s2,80(sp)
    80003ffc:	05313423          	sd	s3,72(sp)
    80004000:	05413023          	sd	s4,64(sp)
    80004004:	03513c23          	sd	s5,56(sp)
    80004008:	03613823          	sd	s6,48(sp)
    8000400c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80004010:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004014:	00006517          	auipc	a0,0x6
    80004018:	46450513          	addi	a0,a0,1124 # 8000a478 <_ZZ13SprintIntegermE6digits+0x10>
    8000401c:	00002097          	auipc	ra,0x2
    80004020:	220080e7          	jalr	544(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80004024:	01e00593          	li	a1,30
    80004028:	fa040493          	addi	s1,s0,-96
    8000402c:	00048513          	mv	a0,s1
    80004030:	00002097          	auipc	ra,0x2
    80004034:	294080e7          	jalr	660(ra) # 800062c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004038:	00048513          	mv	a0,s1
    8000403c:	00002097          	auipc	ra,0x2
    80004040:	360080e7          	jalr	864(ra) # 8000639c <_Z11stringToIntPKc>
    80004044:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004048:	00006517          	auipc	a0,0x6
    8000404c:	45050513          	addi	a0,a0,1104 # 8000a498 <_ZZ13SprintIntegermE6digits+0x30>
    80004050:	00002097          	auipc	ra,0x2
    80004054:	1ec080e7          	jalr	492(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80004058:	01e00593          	li	a1,30
    8000405c:	00048513          	mv	a0,s1
    80004060:	00002097          	auipc	ra,0x2
    80004064:	264080e7          	jalr	612(ra) # 800062c4 <_Z9getStringPci>
    n = stringToInt(input);
    80004068:	00048513          	mv	a0,s1
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	330080e7          	jalr	816(ra) # 8000639c <_Z11stringToIntPKc>
    80004074:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004078:	00006517          	auipc	a0,0x6
    8000407c:	44050513          	addi	a0,a0,1088 # 8000a4b8 <_ZZ13SprintIntegermE6digits+0x50>
    80004080:	00002097          	auipc	ra,0x2
    80004084:	1bc080e7          	jalr	444(ra) # 8000623c <_Z11printStringPKc>
    80004088:	00000613          	li	a2,0
    8000408c:	00a00593          	li	a1,10
    80004090:	00090513          	mv	a0,s2
    80004094:	00002097          	auipc	ra,0x2
    80004098:	358080e7          	jalr	856(ra) # 800063ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000409c:	00006517          	auipc	a0,0x6
    800040a0:	43450513          	addi	a0,a0,1076 # 8000a4d0 <_ZZ13SprintIntegermE6digits+0x68>
    800040a4:	00002097          	auipc	ra,0x2
    800040a8:	198080e7          	jalr	408(ra) # 8000623c <_Z11printStringPKc>
    800040ac:	00000613          	li	a2,0
    800040b0:	00a00593          	li	a1,10
    800040b4:	00048513          	mv	a0,s1
    800040b8:	00002097          	auipc	ra,0x2
    800040bc:	334080e7          	jalr	820(ra) # 800063ec <_Z8printIntiii>
    printString(".\n");
    800040c0:	00006517          	auipc	a0,0x6
    800040c4:	42850513          	addi	a0,a0,1064 # 8000a4e8 <_ZZ13SprintIntegermE6digits+0x80>
    800040c8:	00002097          	auipc	ra,0x2
    800040cc:	174080e7          	jalr	372(ra) # 8000623c <_Z11printStringPKc>
    if(threadNum > n) {
    800040d0:	0324c463          	blt	s1,s2,800040f8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800040d4:	03205c63          	blez	s2,8000410c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800040d8:	03800513          	li	a0,56
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	1ac080e7          	jalr	428(ra) # 80002288 <_Znwm>
    800040e4:	00050a13          	mv	s4,a0
    800040e8:	00048593          	mv	a1,s1
    800040ec:	00003097          	auipc	ra,0x3
    800040f0:	080080e7          	jalr	128(ra) # 8000716c <_ZN6BufferC1Ei>
    800040f4:	0300006f          	j	80004124 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800040f8:	00006517          	auipc	a0,0x6
    800040fc:	3f850513          	addi	a0,a0,1016 # 8000a4f0 <_ZZ13SprintIntegermE6digits+0x88>
    80004100:	00002097          	auipc	ra,0x2
    80004104:	13c080e7          	jalr	316(ra) # 8000623c <_Z11printStringPKc>
        return;
    80004108:	0140006f          	j	8000411c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000410c:	00006517          	auipc	a0,0x6
    80004110:	42450513          	addi	a0,a0,1060 # 8000a530 <_ZZ13SprintIntegermE6digits+0xc8>
    80004114:	00002097          	auipc	ra,0x2
    80004118:	128080e7          	jalr	296(ra) # 8000623c <_Z11printStringPKc>
        return;
    8000411c:	000b0113          	mv	sp,s6
    80004120:	1500006f          	j	80004270 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80004124:	00000593          	li	a1,0
    80004128:	00009517          	auipc	a0,0x9
    8000412c:	df050513          	addi	a0,a0,-528 # 8000cf18 <_ZL10waitForAll>
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	954080e7          	jalr	-1708(ra) # 80001a84 <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80004138:	00391793          	slli	a5,s2,0x3
    8000413c:	00f78793          	addi	a5,a5,15
    80004140:	ff07f793          	andi	a5,a5,-16
    80004144:	40f10133          	sub	sp,sp,a5
    80004148:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000414c:	0019071b          	addiw	a4,s2,1
    80004150:	00171793          	slli	a5,a4,0x1
    80004154:	00e787b3          	add	a5,a5,a4
    80004158:	00379793          	slli	a5,a5,0x3
    8000415c:	00f78793          	addi	a5,a5,15
    80004160:	ff07f793          	andi	a5,a5,-16
    80004164:	40f10133          	sub	sp,sp,a5
    80004168:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000416c:	00191613          	slli	a2,s2,0x1
    80004170:	012607b3          	add	a5,a2,s2
    80004174:	00379793          	slli	a5,a5,0x3
    80004178:	00f987b3          	add	a5,s3,a5
    8000417c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004180:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004184:	00009717          	auipc	a4,0x9
    80004188:	d9473703          	ld	a4,-620(a4) # 8000cf18 <_ZL10waitForAll>
    8000418c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004190:	00078613          	mv	a2,a5
    80004194:	00000597          	auipc	a1,0x0
    80004198:	d7458593          	addi	a1,a1,-652 # 80003f08 <_ZL8consumerPv>
    8000419c:	f9840513          	addi	a0,s0,-104
    800041a0:	ffffd097          	auipc	ra,0xffffd
    800041a4:	6f0080e7          	jalr	1776(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800041a8:	00000493          	li	s1,0
    800041ac:	0280006f          	j	800041d4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800041b0:	00000597          	auipc	a1,0x0
    800041b4:	c1458593          	addi	a1,a1,-1004 # 80003dc4 <_ZL16producerKeyboardPv>
                      data + i);
    800041b8:	00179613          	slli	a2,a5,0x1
    800041bc:	00f60633          	add	a2,a2,a5
    800041c0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800041c4:	00c98633          	add	a2,s3,a2
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	6c8080e7          	jalr	1736(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800041d0:	0014849b          	addiw	s1,s1,1
    800041d4:	0524d263          	bge	s1,s2,80004218 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800041d8:	00149793          	slli	a5,s1,0x1
    800041dc:	009787b3          	add	a5,a5,s1
    800041e0:	00379793          	slli	a5,a5,0x3
    800041e4:	00f987b3          	add	a5,s3,a5
    800041e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800041ec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800041f0:	00009717          	auipc	a4,0x9
    800041f4:	d2873703          	ld	a4,-728(a4) # 8000cf18 <_ZL10waitForAll>
    800041f8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800041fc:	00048793          	mv	a5,s1
    80004200:	00349513          	slli	a0,s1,0x3
    80004204:	00aa8533          	add	a0,s5,a0
    80004208:	fa9054e3          	blez	s1,800041b0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000420c:	00000597          	auipc	a1,0x0
    80004210:	c6858593          	addi	a1,a1,-920 # 80003e74 <_ZL8producerPv>
    80004214:	fa5ff06f          	j	800041b8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80004218:	ffffd097          	auipc	ra,0xffffd
    8000421c:	734080e7          	jalr	1844(ra) # 8000194c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80004220:	00000493          	li	s1,0
    80004224:	00994e63          	blt	s2,s1,80004240 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80004228:	00009517          	auipc	a0,0x9
    8000422c:	cf053503          	ld	a0,-784(a0) # 8000cf18 <_ZL10waitForAll>
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	8d8080e7          	jalr	-1832(ra) # 80001b08 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80004238:	0014849b          	addiw	s1,s1,1
    8000423c:	fe9ff06f          	j	80004224 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80004240:	00009517          	auipc	a0,0x9
    80004244:	cd853503          	ld	a0,-808(a0) # 8000cf18 <_ZL10waitForAll>
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	880080e7          	jalr	-1920(ra) # 80001ac8 <_Z9sem_closeP3sem>
    delete buffer;
    80004250:	000a0e63          	beqz	s4,8000426c <_Z22producerConsumer_C_APIv+0x284>
    80004254:	000a0513          	mv	a0,s4
    80004258:	00003097          	auipc	ra,0x3
    8000425c:	154080e7          	jalr	340(ra) # 800073ac <_ZN6BufferD1Ev>
    80004260:	000a0513          	mv	a0,s4
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	074080e7          	jalr	116(ra) # 800022d8 <_ZdlPv>
    8000426c:	000b0113          	mv	sp,s6

}
    80004270:	f9040113          	addi	sp,s0,-112
    80004274:	06813083          	ld	ra,104(sp)
    80004278:	06013403          	ld	s0,96(sp)
    8000427c:	05813483          	ld	s1,88(sp)
    80004280:	05013903          	ld	s2,80(sp)
    80004284:	04813983          	ld	s3,72(sp)
    80004288:	04013a03          	ld	s4,64(sp)
    8000428c:	03813a83          	ld	s5,56(sp)
    80004290:	03013b03          	ld	s6,48(sp)
    80004294:	07010113          	addi	sp,sp,112
    80004298:	00008067          	ret
    8000429c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800042a0:	000a0513          	mv	a0,s4
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	034080e7          	jalr	52(ra) # 800022d8 <_ZdlPv>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	0000a097          	auipc	ra,0xa
    800042b4:	d78080e7          	jalr	-648(ra) # 8000e028 <_Unwind_Resume>

00000000800042b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	01213023          	sd	s2,0(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800042d4:	00100793          	li	a5,1
    800042d8:	02a7f863          	bgeu	a5,a0,80004308 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800042dc:	00a00793          	li	a5,10
    800042e0:	02f577b3          	remu	a5,a0,a5
    800042e4:	02078e63          	beqz	a5,80004320 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800042e8:	fff48513          	addi	a0,s1,-1
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	fcc080e7          	jalr	-52(ra) # 800042b8 <_ZL9fibonaccim>
    800042f4:	00050913          	mv	s2,a0
    800042f8:	ffe48513          	addi	a0,s1,-2
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	fbc080e7          	jalr	-68(ra) # 800042b8 <_ZL9fibonaccim>
    80004304:	00a90533          	add	a0,s2,a0
}
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004320:	ffffd097          	auipc	ra,0xffffd
    80004324:	62c080e7          	jalr	1580(ra) # 8000194c <_Z15thread_dispatchv>
    80004328:	fc1ff06f          	j	800042e8 <_ZL9fibonaccim+0x30>

000000008000432c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000432c:	fe010113          	addi	sp,sp,-32
    80004330:	00113c23          	sd	ra,24(sp)
    80004334:	00813823          	sd	s0,16(sp)
    80004338:	00913423          	sd	s1,8(sp)
    8000433c:	01213023          	sd	s2,0(sp)
    80004340:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004344:	00000913          	li	s2,0
    80004348:	0380006f          	j	80004380 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	600080e7          	jalr	1536(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004354:	00148493          	addi	s1,s1,1
    80004358:	000027b7          	lui	a5,0x2
    8000435c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004360:	0097ee63          	bltu	a5,s1,8000437c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004364:	00000713          	li	a4,0
    80004368:	000077b7          	lui	a5,0x7
    8000436c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004370:	fce7eee3          	bltu	a5,a4,8000434c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004374:	00170713          	addi	a4,a4,1
    80004378:	ff1ff06f          	j	80004368 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000437c:	00190913          	addi	s2,s2,1
    80004380:	00900793          	li	a5,9
    80004384:	0527e063          	bltu	a5,s2,800043c4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004388:	00006517          	auipc	a0,0x6
    8000438c:	1d850513          	addi	a0,a0,472 # 8000a560 <_ZZ13SprintIntegermE6digits+0xf8>
    80004390:	00002097          	auipc	ra,0x2
    80004394:	eac080e7          	jalr	-340(ra) # 8000623c <_Z11printStringPKc>
    80004398:	00000613          	li	a2,0
    8000439c:	00a00593          	li	a1,10
    800043a0:	0009051b          	sext.w	a0,s2
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	048080e7          	jalr	72(ra) # 800063ec <_Z8printIntiii>
    800043ac:	00006517          	auipc	a0,0x6
    800043b0:	40450513          	addi	a0,a0,1028 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800043b4:	00002097          	auipc	ra,0x2
    800043b8:	e88080e7          	jalr	-376(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043bc:	00000493          	li	s1,0
    800043c0:	f99ff06f          	j	80004358 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800043c4:	00006517          	auipc	a0,0x6
    800043c8:	1a450513          	addi	a0,a0,420 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    800043cc:	00002097          	auipc	ra,0x2
    800043d0:	e70080e7          	jalr	-400(ra) # 8000623c <_Z11printStringPKc>
    finishedA = true;
    800043d4:	00100793          	li	a5,1
    800043d8:	00009717          	auipc	a4,0x9
    800043dc:	b4f70423          	sb	a5,-1208(a4) # 8000cf20 <_ZL9finishedA>
}
    800043e0:	01813083          	ld	ra,24(sp)
    800043e4:	01013403          	ld	s0,16(sp)
    800043e8:	00813483          	ld	s1,8(sp)
    800043ec:	00013903          	ld	s2,0(sp)
    800043f0:	02010113          	addi	sp,sp,32
    800043f4:	00008067          	ret

00000000800043f8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800043f8:	fe010113          	addi	sp,sp,-32
    800043fc:	00113c23          	sd	ra,24(sp)
    80004400:	00813823          	sd	s0,16(sp)
    80004404:	00913423          	sd	s1,8(sp)
    80004408:	01213023          	sd	s2,0(sp)
    8000440c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004410:	00000913          	li	s2,0
    80004414:	0380006f          	j	8000444c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004418:	ffffd097          	auipc	ra,0xffffd
    8000441c:	534080e7          	jalr	1332(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004420:	00148493          	addi	s1,s1,1
    80004424:	000027b7          	lui	a5,0x2
    80004428:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000442c:	0097ee63          	bltu	a5,s1,80004448 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004430:	00000713          	li	a4,0
    80004434:	000077b7          	lui	a5,0x7
    80004438:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000443c:	fce7eee3          	bltu	a5,a4,80004418 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004440:	00170713          	addi	a4,a4,1
    80004444:	ff1ff06f          	j	80004434 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004448:	00190913          	addi	s2,s2,1
    8000444c:	00f00793          	li	a5,15
    80004450:	0527e063          	bltu	a5,s2,80004490 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004454:	00006517          	auipc	a0,0x6
    80004458:	12450513          	addi	a0,a0,292 # 8000a578 <_ZZ13SprintIntegermE6digits+0x110>
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	de0080e7          	jalr	-544(ra) # 8000623c <_Z11printStringPKc>
    80004464:	00000613          	li	a2,0
    80004468:	00a00593          	li	a1,10
    8000446c:	0009051b          	sext.w	a0,s2
    80004470:	00002097          	auipc	ra,0x2
    80004474:	f7c080e7          	jalr	-132(ra) # 800063ec <_Z8printIntiii>
    80004478:	00006517          	auipc	a0,0x6
    8000447c:	33850513          	addi	a0,a0,824 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80004480:	00002097          	auipc	ra,0x2
    80004484:	dbc080e7          	jalr	-580(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004488:	00000493          	li	s1,0
    8000448c:	f99ff06f          	j	80004424 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004490:	00006517          	auipc	a0,0x6
    80004494:	0f050513          	addi	a0,a0,240 # 8000a580 <_ZZ13SprintIntegermE6digits+0x118>
    80004498:	00002097          	auipc	ra,0x2
    8000449c:	da4080e7          	jalr	-604(ra) # 8000623c <_Z11printStringPKc>
    finishedB = true;
    800044a0:	00100793          	li	a5,1
    800044a4:	00009717          	auipc	a4,0x9
    800044a8:	a6f70ea3          	sb	a5,-1411(a4) # 8000cf21 <_ZL9finishedB>
    thread_dispatch();
    800044ac:	ffffd097          	auipc	ra,0xffffd
    800044b0:	4a0080e7          	jalr	1184(ra) # 8000194c <_Z15thread_dispatchv>
}
    800044b4:	01813083          	ld	ra,24(sp)
    800044b8:	01013403          	ld	s0,16(sp)
    800044bc:	00813483          	ld	s1,8(sp)
    800044c0:	00013903          	ld	s2,0(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00008067          	ret

00000000800044cc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00113c23          	sd	ra,24(sp)
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00913423          	sd	s1,8(sp)
    800044dc:	01213023          	sd	s2,0(sp)
    800044e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800044e4:	00000493          	li	s1,0
    800044e8:	0400006f          	j	80004528 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800044ec:	00006517          	auipc	a0,0x6
    800044f0:	0a450513          	addi	a0,a0,164 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    800044f4:	00002097          	auipc	ra,0x2
    800044f8:	d48080e7          	jalr	-696(ra) # 8000623c <_Z11printStringPKc>
    800044fc:	00000613          	li	a2,0
    80004500:	00a00593          	li	a1,10
    80004504:	00048513          	mv	a0,s1
    80004508:	00002097          	auipc	ra,0x2
    8000450c:	ee4080e7          	jalr	-284(ra) # 800063ec <_Z8printIntiii>
    80004510:	00006517          	auipc	a0,0x6
    80004514:	2a050513          	addi	a0,a0,672 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	d24080e7          	jalr	-732(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004520:	0014849b          	addiw	s1,s1,1
    80004524:	0ff4f493          	andi	s1,s1,255
    80004528:	00200793          	li	a5,2
    8000452c:	fc97f0e3          	bgeu	a5,s1,800044ec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004530:	00006517          	auipc	a0,0x6
    80004534:	06850513          	addi	a0,a0,104 # 8000a598 <_ZZ13SprintIntegermE6digits+0x130>
    80004538:	00002097          	auipc	ra,0x2
    8000453c:	d04080e7          	jalr	-764(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004540:	00700313          	li	t1,7
    thread_dispatch();
    80004544:	ffffd097          	auipc	ra,0xffffd
    80004548:	408080e7          	jalr	1032(ra) # 8000194c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000454c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004550:	00006517          	auipc	a0,0x6
    80004554:	05850513          	addi	a0,a0,88 # 8000a5a8 <_ZZ13SprintIntegermE6digits+0x140>
    80004558:	00002097          	auipc	ra,0x2
    8000455c:	ce4080e7          	jalr	-796(ra) # 8000623c <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	0009051b          	sext.w	a0,s2
    8000456c:	00002097          	auipc	ra,0x2
    80004570:	e80080e7          	jalr	-384(ra) # 800063ec <_Z8printIntiii>
    80004574:	00006517          	auipc	a0,0x6
    80004578:	23c50513          	addi	a0,a0,572 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    8000457c:	00002097          	auipc	ra,0x2
    80004580:	cc0080e7          	jalr	-832(ra) # 8000623c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004584:	00c00513          	li	a0,12
    80004588:	00000097          	auipc	ra,0x0
    8000458c:	d30080e7          	jalr	-720(ra) # 800042b8 <_ZL9fibonaccim>
    80004590:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004594:	00006517          	auipc	a0,0x6
    80004598:	01c50513          	addi	a0,a0,28 # 8000a5b0 <_ZZ13SprintIntegermE6digits+0x148>
    8000459c:	00002097          	auipc	ra,0x2
    800045a0:	ca0080e7          	jalr	-864(ra) # 8000623c <_Z11printStringPKc>
    800045a4:	00000613          	li	a2,0
    800045a8:	00a00593          	li	a1,10
    800045ac:	0009051b          	sext.w	a0,s2
    800045b0:	00002097          	auipc	ra,0x2
    800045b4:	e3c080e7          	jalr	-452(ra) # 800063ec <_Z8printIntiii>
    800045b8:	00006517          	auipc	a0,0x6
    800045bc:	1f850513          	addi	a0,a0,504 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800045c0:	00002097          	auipc	ra,0x2
    800045c4:	c7c080e7          	jalr	-900(ra) # 8000623c <_Z11printStringPKc>
    800045c8:	0400006f          	j	80004608 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800045cc:	00006517          	auipc	a0,0x6
    800045d0:	fc450513          	addi	a0,a0,-60 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    800045d4:	00002097          	auipc	ra,0x2
    800045d8:	c68080e7          	jalr	-920(ra) # 8000623c <_Z11printStringPKc>
    800045dc:	00000613          	li	a2,0
    800045e0:	00a00593          	li	a1,10
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00002097          	auipc	ra,0x2
    800045ec:	e04080e7          	jalr	-508(ra) # 800063ec <_Z8printIntiii>
    800045f0:	00006517          	auipc	a0,0x6
    800045f4:	1c050513          	addi	a0,a0,448 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800045f8:	00002097          	auipc	ra,0x2
    800045fc:	c44080e7          	jalr	-956(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004600:	0014849b          	addiw	s1,s1,1
    80004604:	0ff4f493          	andi	s1,s1,255
    80004608:	00500793          	li	a5,5
    8000460c:	fc97f0e3          	bgeu	a5,s1,800045cc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004610:	00006517          	auipc	a0,0x6
    80004614:	f5850513          	addi	a0,a0,-168 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    80004618:	00002097          	auipc	ra,0x2
    8000461c:	c24080e7          	jalr	-988(ra) # 8000623c <_Z11printStringPKc>
    finishedC = true;
    80004620:	00100793          	li	a5,1
    80004624:	00009717          	auipc	a4,0x9
    80004628:	8ef70f23          	sb	a5,-1794(a4) # 8000cf22 <_ZL9finishedC>
    thread_dispatch();
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	320080e7          	jalr	800(ra) # 8000194c <_Z15thread_dispatchv>
}
    80004634:	01813083          	ld	ra,24(sp)
    80004638:	01013403          	ld	s0,16(sp)
    8000463c:	00813483          	ld	s1,8(sp)
    80004640:	00013903          	ld	s2,0(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret

000000008000464c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000464c:	fe010113          	addi	sp,sp,-32
    80004650:	00113c23          	sd	ra,24(sp)
    80004654:	00813823          	sd	s0,16(sp)
    80004658:	00913423          	sd	s1,8(sp)
    8000465c:	01213023          	sd	s2,0(sp)
    80004660:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004664:	00a00493          	li	s1,10
    80004668:	0400006f          	j	800046a8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000466c:	00006517          	auipc	a0,0x6
    80004670:	f5450513          	addi	a0,a0,-172 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    80004674:	00002097          	auipc	ra,0x2
    80004678:	bc8080e7          	jalr	-1080(ra) # 8000623c <_Z11printStringPKc>
    8000467c:	00000613          	li	a2,0
    80004680:	00a00593          	li	a1,10
    80004684:	00048513          	mv	a0,s1
    80004688:	00002097          	auipc	ra,0x2
    8000468c:	d64080e7          	jalr	-668(ra) # 800063ec <_Z8printIntiii>
    80004690:	00006517          	auipc	a0,0x6
    80004694:	12050513          	addi	a0,a0,288 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80004698:	00002097          	auipc	ra,0x2
    8000469c:	ba4080e7          	jalr	-1116(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800046a0:	0014849b          	addiw	s1,s1,1
    800046a4:	0ff4f493          	andi	s1,s1,255
    800046a8:	00c00793          	li	a5,12
    800046ac:	fc97f0e3          	bgeu	a5,s1,8000466c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800046b0:	00006517          	auipc	a0,0x6
    800046b4:	f1850513          	addi	a0,a0,-232 # 8000a5c8 <_ZZ13SprintIntegermE6digits+0x160>
    800046b8:	00002097          	auipc	ra,0x2
    800046bc:	b84080e7          	jalr	-1148(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800046c0:	00500313          	li	t1,5
    thread_dispatch();
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	288080e7          	jalr	648(ra) # 8000194c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800046cc:	01000513          	li	a0,16
    800046d0:	00000097          	auipc	ra,0x0
    800046d4:	be8080e7          	jalr	-1048(ra) # 800042b8 <_ZL9fibonaccim>
    800046d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800046dc:	00006517          	auipc	a0,0x6
    800046e0:	efc50513          	addi	a0,a0,-260 # 8000a5d8 <_ZZ13SprintIntegermE6digits+0x170>
    800046e4:	00002097          	auipc	ra,0x2
    800046e8:	b58080e7          	jalr	-1192(ra) # 8000623c <_Z11printStringPKc>
    800046ec:	00000613          	li	a2,0
    800046f0:	00a00593          	li	a1,10
    800046f4:	0009051b          	sext.w	a0,s2
    800046f8:	00002097          	auipc	ra,0x2
    800046fc:	cf4080e7          	jalr	-780(ra) # 800063ec <_Z8printIntiii>
    80004700:	00006517          	auipc	a0,0x6
    80004704:	0b050513          	addi	a0,a0,176 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80004708:	00002097          	auipc	ra,0x2
    8000470c:	b34080e7          	jalr	-1228(ra) # 8000623c <_Z11printStringPKc>
    80004710:	0400006f          	j	80004750 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004714:	00006517          	auipc	a0,0x6
    80004718:	eac50513          	addi	a0,a0,-340 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    8000471c:	00002097          	auipc	ra,0x2
    80004720:	b20080e7          	jalr	-1248(ra) # 8000623c <_Z11printStringPKc>
    80004724:	00000613          	li	a2,0
    80004728:	00a00593          	li	a1,10
    8000472c:	00048513          	mv	a0,s1
    80004730:	00002097          	auipc	ra,0x2
    80004734:	cbc080e7          	jalr	-836(ra) # 800063ec <_Z8printIntiii>
    80004738:	00006517          	auipc	a0,0x6
    8000473c:	07850513          	addi	a0,a0,120 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80004740:	00002097          	auipc	ra,0x2
    80004744:	afc080e7          	jalr	-1284(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004748:	0014849b          	addiw	s1,s1,1
    8000474c:	0ff4f493          	andi	s1,s1,255
    80004750:	00f00793          	li	a5,15
    80004754:	fc97f0e3          	bgeu	a5,s1,80004714 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004758:	00006517          	auipc	a0,0x6
    8000475c:	e9050513          	addi	a0,a0,-368 # 8000a5e8 <_ZZ13SprintIntegermE6digits+0x180>
    80004760:	00002097          	auipc	ra,0x2
    80004764:	adc080e7          	jalr	-1316(ra) # 8000623c <_Z11printStringPKc>
    finishedD = true;
    80004768:	00100793          	li	a5,1
    8000476c:	00008717          	auipc	a4,0x8
    80004770:	7af70ba3          	sb	a5,1975(a4) # 8000cf23 <_ZL9finishedD>
    thread_dispatch();
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	1d8080e7          	jalr	472(ra) # 8000194c <_Z15thread_dispatchv>
}
    8000477c:	01813083          	ld	ra,24(sp)
    80004780:	01013403          	ld	s0,16(sp)
    80004784:	00813483          	ld	s1,8(sp)
    80004788:	00013903          	ld	s2,0(sp)
    8000478c:	02010113          	addi	sp,sp,32
    80004790:	00008067          	ret

0000000080004794 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004794:	fc010113          	addi	sp,sp,-64
    80004798:	02113c23          	sd	ra,56(sp)
    8000479c:	02813823          	sd	s0,48(sp)
    800047a0:	02913423          	sd	s1,40(sp)
    800047a4:	03213023          	sd	s2,32(sp)
    800047a8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800047ac:	02000513          	li	a0,32
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	ad8080e7          	jalr	-1320(ra) # 80002288 <_Znwm>
    800047b8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	c14080e7          	jalr	-1004(ra) # 800023d0 <_ZN6ThreadC1Ev>
    800047c4:	00008797          	auipc	a5,0x8
    800047c8:	49c78793          	addi	a5,a5,1180 # 8000cc60 <_ZTV7WorkerA+0x10>
    800047cc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800047d0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800047d4:	00006517          	auipc	a0,0x6
    800047d8:	e2450513          	addi	a0,a0,-476 # 8000a5f8 <_ZZ13SprintIntegermE6digits+0x190>
    800047dc:	00002097          	auipc	ra,0x2
    800047e0:	a60080e7          	jalr	-1440(ra) # 8000623c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800047e4:	02000513          	li	a0,32
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	aa0080e7          	jalr	-1376(ra) # 80002288 <_Znwm>
    800047f0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	bdc080e7          	jalr	-1060(ra) # 800023d0 <_ZN6ThreadC1Ev>
    800047fc:	00008797          	auipc	a5,0x8
    80004800:	48c78793          	addi	a5,a5,1164 # 8000cc88 <_ZTV7WorkerB+0x10>
    80004804:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004808:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000480c:	00006517          	auipc	a0,0x6
    80004810:	e0450513          	addi	a0,a0,-508 # 8000a610 <_ZZ13SprintIntegermE6digits+0x1a8>
    80004814:	00002097          	auipc	ra,0x2
    80004818:	a28080e7          	jalr	-1496(ra) # 8000623c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000481c:	02000513          	li	a0,32
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	a68080e7          	jalr	-1432(ra) # 80002288 <_Znwm>
    80004828:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	ba4080e7          	jalr	-1116(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80004834:	00008797          	auipc	a5,0x8
    80004838:	47c78793          	addi	a5,a5,1148 # 8000ccb0 <_ZTV7WorkerC+0x10>
    8000483c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004840:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004844:	00006517          	auipc	a0,0x6
    80004848:	de450513          	addi	a0,a0,-540 # 8000a628 <_ZZ13SprintIntegermE6digits+0x1c0>
    8000484c:	00002097          	auipc	ra,0x2
    80004850:	9f0080e7          	jalr	-1552(ra) # 8000623c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004854:	02000513          	li	a0,32
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	a30080e7          	jalr	-1488(ra) # 80002288 <_Znwm>
    80004860:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004864:	ffffe097          	auipc	ra,0xffffe
    80004868:	b6c080e7          	jalr	-1172(ra) # 800023d0 <_ZN6ThreadC1Ev>
    8000486c:	00008797          	auipc	a5,0x8
    80004870:	46c78793          	addi	a5,a5,1132 # 8000ccd8 <_ZTV7WorkerD+0x10>
    80004874:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004878:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000487c:	00006517          	auipc	a0,0x6
    80004880:	dc450513          	addi	a0,a0,-572 # 8000a640 <_ZZ13SprintIntegermE6digits+0x1d8>
    80004884:	00002097          	auipc	ra,0x2
    80004888:	9b8080e7          	jalr	-1608(ra) # 8000623c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000488c:	00000493          	li	s1,0
    80004890:	00300793          	li	a5,3
    80004894:	0297c663          	blt	a5,s1,800048c0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004898:	00349793          	slli	a5,s1,0x3
    8000489c:	fe040713          	addi	a4,s0,-32
    800048a0:	00f707b3          	add	a5,a4,a5
    800048a4:	fe07b503          	ld	a0,-32(a5)
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	cd8080e7          	jalr	-808(ra) # 80002580 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800048b0:	0014849b          	addiw	s1,s1,1
    800048b4:	fddff06f          	j	80004890 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	b50080e7          	jalr	-1200(ra) # 80002408 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800048c0:	00008797          	auipc	a5,0x8
    800048c4:	6607c783          	lbu	a5,1632(a5) # 8000cf20 <_ZL9finishedA>
    800048c8:	fe0788e3          	beqz	a5,800048b8 <_Z20Threads_CPP_API_testv+0x124>
    800048cc:	00008797          	auipc	a5,0x8
    800048d0:	6557c783          	lbu	a5,1621(a5) # 8000cf21 <_ZL9finishedB>
    800048d4:	fe0782e3          	beqz	a5,800048b8 <_Z20Threads_CPP_API_testv+0x124>
    800048d8:	00008797          	auipc	a5,0x8
    800048dc:	64a7c783          	lbu	a5,1610(a5) # 8000cf22 <_ZL9finishedC>
    800048e0:	fc078ce3          	beqz	a5,800048b8 <_Z20Threads_CPP_API_testv+0x124>
    800048e4:	00008797          	auipc	a5,0x8
    800048e8:	63f7c783          	lbu	a5,1599(a5) # 8000cf23 <_ZL9finishedD>
    800048ec:	fc0786e3          	beqz	a5,800048b8 <_Z20Threads_CPP_API_testv+0x124>
    800048f0:	fc040493          	addi	s1,s0,-64
    800048f4:	0080006f          	j	800048fc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800048f8:	00848493          	addi	s1,s1,8
    800048fc:	fe040793          	addi	a5,s0,-32
    80004900:	08f48663          	beq	s1,a5,8000498c <_Z20Threads_CPP_API_testv+0x1f8>
    80004904:	0004b503          	ld	a0,0(s1)
    80004908:	fe0508e3          	beqz	a0,800048f8 <_Z20Threads_CPP_API_testv+0x164>
    8000490c:	00053783          	ld	a5,0(a0)
    80004910:	0087b783          	ld	a5,8(a5)
    80004914:	000780e7          	jalr	a5
    80004918:	fe1ff06f          	j	800048f8 <_Z20Threads_CPP_API_testv+0x164>
    8000491c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004920:	00048513          	mv	a0,s1
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	9b4080e7          	jalr	-1612(ra) # 800022d8 <_ZdlPv>
    8000492c:	00090513          	mv	a0,s2
    80004930:	00009097          	auipc	ra,0x9
    80004934:	6f8080e7          	jalr	1784(ra) # 8000e028 <_Unwind_Resume>
    80004938:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000493c:	00048513          	mv	a0,s1
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	998080e7          	jalr	-1640(ra) # 800022d8 <_ZdlPv>
    80004948:	00090513          	mv	a0,s2
    8000494c:	00009097          	auipc	ra,0x9
    80004950:	6dc080e7          	jalr	1756(ra) # 8000e028 <_Unwind_Resume>
    80004954:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004958:	00048513          	mv	a0,s1
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	97c080e7          	jalr	-1668(ra) # 800022d8 <_ZdlPv>
    80004964:	00090513          	mv	a0,s2
    80004968:	00009097          	auipc	ra,0x9
    8000496c:	6c0080e7          	jalr	1728(ra) # 8000e028 <_Unwind_Resume>
    80004970:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004974:	00048513          	mv	a0,s1
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	960080e7          	jalr	-1696(ra) # 800022d8 <_ZdlPv>
    80004980:	00090513          	mv	a0,s2
    80004984:	00009097          	auipc	ra,0x9
    80004988:	6a4080e7          	jalr	1700(ra) # 8000e028 <_Unwind_Resume>
}
    8000498c:	03813083          	ld	ra,56(sp)
    80004990:	03013403          	ld	s0,48(sp)
    80004994:	02813483          	ld	s1,40(sp)
    80004998:	02013903          	ld	s2,32(sp)
    8000499c:	04010113          	addi	sp,sp,64
    800049a0:	00008067          	ret

00000000800049a4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800049a4:	ff010113          	addi	sp,sp,-16
    800049a8:	00113423          	sd	ra,8(sp)
    800049ac:	00813023          	sd	s0,0(sp)
    800049b0:	01010413          	addi	s0,sp,16
    800049b4:	00008797          	auipc	a5,0x8
    800049b8:	2ac78793          	addi	a5,a5,684 # 8000cc60 <_ZTV7WorkerA+0x10>
    800049bc:	00f53023          	sd	a5,0(a0)
    800049c0:	ffffe097          	auipc	ra,0xffffe
    800049c4:	c78080e7          	jalr	-904(ra) # 80002638 <_ZN6ThreadD1Ev>
    800049c8:	00813083          	ld	ra,8(sp)
    800049cc:	00013403          	ld	s0,0(sp)
    800049d0:	01010113          	addi	sp,sp,16
    800049d4:	00008067          	ret

00000000800049d8 <_ZN7WorkerAD0Ev>:
    800049d8:	fe010113          	addi	sp,sp,-32
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	02010413          	addi	s0,sp,32
    800049ec:	00050493          	mv	s1,a0
    800049f0:	00008797          	auipc	a5,0x8
    800049f4:	27078793          	addi	a5,a5,624 # 8000cc60 <_ZTV7WorkerA+0x10>
    800049f8:	00f53023          	sd	a5,0(a0)
    800049fc:	ffffe097          	auipc	ra,0xffffe
    80004a00:	c3c080e7          	jalr	-964(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004a04:	00048513          	mv	a0,s1
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	8d0080e7          	jalr	-1840(ra) # 800022d8 <_ZdlPv>
    80004a10:	01813083          	ld	ra,24(sp)
    80004a14:	01013403          	ld	s0,16(sp)
    80004a18:	00813483          	ld	s1,8(sp)
    80004a1c:	02010113          	addi	sp,sp,32
    80004a20:	00008067          	ret

0000000080004a24 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00113423          	sd	ra,8(sp)
    80004a2c:	00813023          	sd	s0,0(sp)
    80004a30:	01010413          	addi	s0,sp,16
    80004a34:	00008797          	auipc	a5,0x8
    80004a38:	25478793          	addi	a5,a5,596 # 8000cc88 <_ZTV7WorkerB+0x10>
    80004a3c:	00f53023          	sd	a5,0(a0)
    80004a40:	ffffe097          	auipc	ra,0xffffe
    80004a44:	bf8080e7          	jalr	-1032(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004a48:	00813083          	ld	ra,8(sp)
    80004a4c:	00013403          	ld	s0,0(sp)
    80004a50:	01010113          	addi	sp,sp,16
    80004a54:	00008067          	ret

0000000080004a58 <_ZN7WorkerBD0Ev>:
    80004a58:	fe010113          	addi	sp,sp,-32
    80004a5c:	00113c23          	sd	ra,24(sp)
    80004a60:	00813823          	sd	s0,16(sp)
    80004a64:	00913423          	sd	s1,8(sp)
    80004a68:	02010413          	addi	s0,sp,32
    80004a6c:	00050493          	mv	s1,a0
    80004a70:	00008797          	auipc	a5,0x8
    80004a74:	21878793          	addi	a5,a5,536 # 8000cc88 <_ZTV7WorkerB+0x10>
    80004a78:	00f53023          	sd	a5,0(a0)
    80004a7c:	ffffe097          	auipc	ra,0xffffe
    80004a80:	bbc080e7          	jalr	-1092(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004a84:	00048513          	mv	a0,s1
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	850080e7          	jalr	-1968(ra) # 800022d8 <_ZdlPv>
    80004a90:	01813083          	ld	ra,24(sp)
    80004a94:	01013403          	ld	s0,16(sp)
    80004a98:	00813483          	ld	s1,8(sp)
    80004a9c:	02010113          	addi	sp,sp,32
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004aa4:	ff010113          	addi	sp,sp,-16
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	00813023          	sd	s0,0(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    80004ab4:	00008797          	auipc	a5,0x8
    80004ab8:	1fc78793          	addi	a5,a5,508 # 8000ccb0 <_ZTV7WorkerC+0x10>
    80004abc:	00f53023          	sd	a5,0(a0)
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	b78080e7          	jalr	-1160(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004ac8:	00813083          	ld	ra,8(sp)
    80004acc:	00013403          	ld	s0,0(sp)
    80004ad0:	01010113          	addi	sp,sp,16
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN7WorkerCD0Ev>:
    80004ad8:	fe010113          	addi	sp,sp,-32
    80004adc:	00113c23          	sd	ra,24(sp)
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00913423          	sd	s1,8(sp)
    80004ae8:	02010413          	addi	s0,sp,32
    80004aec:	00050493          	mv	s1,a0
    80004af0:	00008797          	auipc	a5,0x8
    80004af4:	1c078793          	addi	a5,a5,448 # 8000ccb0 <_ZTV7WorkerC+0x10>
    80004af8:	00f53023          	sd	a5,0(a0)
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	b3c080e7          	jalr	-1220(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004b04:	00048513          	mv	a0,s1
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	7d0080e7          	jalr	2000(ra) # 800022d8 <_ZdlPv>
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	00813483          	ld	s1,8(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004b24:	ff010113          	addi	sp,sp,-16
    80004b28:	00113423          	sd	ra,8(sp)
    80004b2c:	00813023          	sd	s0,0(sp)
    80004b30:	01010413          	addi	s0,sp,16
    80004b34:	00008797          	auipc	a5,0x8
    80004b38:	1a478793          	addi	a5,a5,420 # 8000ccd8 <_ZTV7WorkerD+0x10>
    80004b3c:	00f53023          	sd	a5,0(a0)
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	af8080e7          	jalr	-1288(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004b48:	00813083          	ld	ra,8(sp)
    80004b4c:	00013403          	ld	s0,0(sp)
    80004b50:	01010113          	addi	sp,sp,16
    80004b54:	00008067          	ret

0000000080004b58 <_ZN7WorkerDD0Ev>:
    80004b58:	fe010113          	addi	sp,sp,-32
    80004b5c:	00113c23          	sd	ra,24(sp)
    80004b60:	00813823          	sd	s0,16(sp)
    80004b64:	00913423          	sd	s1,8(sp)
    80004b68:	02010413          	addi	s0,sp,32
    80004b6c:	00050493          	mv	s1,a0
    80004b70:	00008797          	auipc	a5,0x8
    80004b74:	16878793          	addi	a5,a5,360 # 8000ccd8 <_ZTV7WorkerD+0x10>
    80004b78:	00f53023          	sd	a5,0(a0)
    80004b7c:	ffffe097          	auipc	ra,0xffffe
    80004b80:	abc080e7          	jalr	-1348(ra) # 80002638 <_ZN6ThreadD1Ev>
    80004b84:	00048513          	mv	a0,s1
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	750080e7          	jalr	1872(ra) # 800022d8 <_ZdlPv>
    80004b90:	01813083          	ld	ra,24(sp)
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	00813483          	ld	s1,8(sp)
    80004b9c:	02010113          	addi	sp,sp,32
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN7WorkerA3runEv>:
    void run() override {
    80004ba4:	ff010113          	addi	sp,sp,-16
    80004ba8:	00113423          	sd	ra,8(sp)
    80004bac:	00813023          	sd	s0,0(sp)
    80004bb0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004bb4:	00000593          	li	a1,0
    80004bb8:	fffff097          	auipc	ra,0xfffff
    80004bbc:	774080e7          	jalr	1908(ra) # 8000432c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004bc0:	00813083          	ld	ra,8(sp)
    80004bc4:	00013403          	ld	s0,0(sp)
    80004bc8:	01010113          	addi	sp,sp,16
    80004bcc:	00008067          	ret

0000000080004bd0 <_ZN7WorkerB3runEv>:
    void run() override {
    80004bd0:	ff010113          	addi	sp,sp,-16
    80004bd4:	00113423          	sd	ra,8(sp)
    80004bd8:	00813023          	sd	s0,0(sp)
    80004bdc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004be0:	00000593          	li	a1,0
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	814080e7          	jalr	-2028(ra) # 800043f8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004bec:	00813083          	ld	ra,8(sp)
    80004bf0:	00013403          	ld	s0,0(sp)
    80004bf4:	01010113          	addi	sp,sp,16
    80004bf8:	00008067          	ret

0000000080004bfc <_ZN7WorkerC3runEv>:
    void run() override {
    80004bfc:	ff010113          	addi	sp,sp,-16
    80004c00:	00113423          	sd	ra,8(sp)
    80004c04:	00813023          	sd	s0,0(sp)
    80004c08:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004c0c:	00000593          	li	a1,0
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	8bc080e7          	jalr	-1860(ra) # 800044cc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004c18:	00813083          	ld	ra,8(sp)
    80004c1c:	00013403          	ld	s0,0(sp)
    80004c20:	01010113          	addi	sp,sp,16
    80004c24:	00008067          	ret

0000000080004c28 <_ZN7WorkerD3runEv>:
    void run() override {
    80004c28:	ff010113          	addi	sp,sp,-16
    80004c2c:	00113423          	sd	ra,8(sp)
    80004c30:	00813023          	sd	s0,0(sp)
    80004c34:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004c38:	00000593          	li	a1,0
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	a10080e7          	jalr	-1520(ra) # 8000464c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004c44:	00813083          	ld	ra,8(sp)
    80004c48:	00013403          	ld	s0,0(sp)
    80004c4c:	01010113          	addi	sp,sp,16
    80004c50:	00008067          	ret

0000000080004c54 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004c54:	f8010113          	addi	sp,sp,-128
    80004c58:	06113c23          	sd	ra,120(sp)
    80004c5c:	06813823          	sd	s0,112(sp)
    80004c60:	06913423          	sd	s1,104(sp)
    80004c64:	07213023          	sd	s2,96(sp)
    80004c68:	05313c23          	sd	s3,88(sp)
    80004c6c:	05413823          	sd	s4,80(sp)
    80004c70:	05513423          	sd	s5,72(sp)
    80004c74:	05613023          	sd	s6,64(sp)
    80004c78:	03713c23          	sd	s7,56(sp)
    80004c7c:	03813823          	sd	s8,48(sp)
    80004c80:	03913423          	sd	s9,40(sp)
    80004c84:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004c88:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c8c:	00005517          	auipc	a0,0x5
    80004c90:	7ec50513          	addi	a0,a0,2028 # 8000a478 <_ZZ13SprintIntegermE6digits+0x10>
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	5a8080e7          	jalr	1448(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80004c9c:	01e00593          	li	a1,30
    80004ca0:	f8040493          	addi	s1,s0,-128
    80004ca4:	00048513          	mv	a0,s1
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	61c080e7          	jalr	1564(ra) # 800062c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004cb0:	00048513          	mv	a0,s1
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	6e8080e7          	jalr	1768(ra) # 8000639c <_Z11stringToIntPKc>
    80004cbc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004cc0:	00005517          	auipc	a0,0x5
    80004cc4:	7d850513          	addi	a0,a0,2008 # 8000a498 <_ZZ13SprintIntegermE6digits+0x30>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	574080e7          	jalr	1396(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80004cd0:	01e00593          	li	a1,30
    80004cd4:	00048513          	mv	a0,s1
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	5ec080e7          	jalr	1516(ra) # 800062c4 <_Z9getStringPci>
    n = stringToInt(input);
    80004ce0:	00048513          	mv	a0,s1
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	6b8080e7          	jalr	1720(ra) # 8000639c <_Z11stringToIntPKc>
    80004cec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004cf0:	00005517          	auipc	a0,0x5
    80004cf4:	7c850513          	addi	a0,a0,1992 # 8000a4b8 <_ZZ13SprintIntegermE6digits+0x50>
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	544080e7          	jalr	1348(ra) # 8000623c <_Z11printStringPKc>
    printInt(threadNum);
    80004d00:	00000613          	li	a2,0
    80004d04:	00a00593          	li	a1,10
    80004d08:	00098513          	mv	a0,s3
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	6e0080e7          	jalr	1760(ra) # 800063ec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004d14:	00005517          	auipc	a0,0x5
    80004d18:	7bc50513          	addi	a0,a0,1980 # 8000a4d0 <_ZZ13SprintIntegermE6digits+0x68>
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	520080e7          	jalr	1312(ra) # 8000623c <_Z11printStringPKc>
    printInt(n);
    80004d24:	00000613          	li	a2,0
    80004d28:	00a00593          	li	a1,10
    80004d2c:	00048513          	mv	a0,s1
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	6bc080e7          	jalr	1724(ra) # 800063ec <_Z8printIntiii>
    printString(".\n");
    80004d38:	00005517          	auipc	a0,0x5
    80004d3c:	7b050513          	addi	a0,a0,1968 # 8000a4e8 <_ZZ13SprintIntegermE6digits+0x80>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	4fc080e7          	jalr	1276(ra) # 8000623c <_Z11printStringPKc>
    if (threadNum > n) {
    80004d48:	0334c463          	blt	s1,s3,80004d70 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004d4c:	03305c63          	blez	s3,80004d84 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004d50:	03800513          	li	a0,56
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	534080e7          	jalr	1332(ra) # 80002288 <_Znwm>
    80004d5c:	00050a93          	mv	s5,a0
    80004d60:	00048593          	mv	a1,s1
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	7a8080e7          	jalr	1960(ra) # 8000650c <_ZN9BufferCPPC1Ei>
    80004d6c:	0300006f          	j	80004d9c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d70:	00005517          	auipc	a0,0x5
    80004d74:	78050513          	addi	a0,a0,1920 # 8000a4f0 <_ZZ13SprintIntegermE6digits+0x88>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	4c4080e7          	jalr	1220(ra) # 8000623c <_Z11printStringPKc>
        return;
    80004d80:	0140006f          	j	80004d94 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d84:	00005517          	auipc	a0,0x5
    80004d88:	7ac50513          	addi	a0,a0,1964 # 8000a530 <_ZZ13SprintIntegermE6digits+0xc8>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	4b0080e7          	jalr	1200(ra) # 8000623c <_Z11printStringPKc>
        return;
    80004d94:	000c0113          	mv	sp,s8
    80004d98:	2140006f          	j	80004fac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004d9c:	01000513          	li	a0,16
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	4e8080e7          	jalr	1256(ra) # 80002288 <_Znwm>
    80004da8:	00050913          	mv	s2,a0
    80004dac:	00000593          	li	a1,0
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	6f8080e7          	jalr	1784(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    80004db8:	00008797          	auipc	a5,0x8
    80004dbc:	1727bc23          	sd	s2,376(a5) # 8000cf30 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004dc0:	00399793          	slli	a5,s3,0x3
    80004dc4:	00f78793          	addi	a5,a5,15
    80004dc8:	ff07f793          	andi	a5,a5,-16
    80004dcc:	40f10133          	sub	sp,sp,a5
    80004dd0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004dd4:	0019871b          	addiw	a4,s3,1
    80004dd8:	00171793          	slli	a5,a4,0x1
    80004ddc:	00e787b3          	add	a5,a5,a4
    80004de0:	00379793          	slli	a5,a5,0x3
    80004de4:	00f78793          	addi	a5,a5,15
    80004de8:	ff07f793          	andi	a5,a5,-16
    80004dec:	40f10133          	sub	sp,sp,a5
    80004df0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004df4:	00199493          	slli	s1,s3,0x1
    80004df8:	013484b3          	add	s1,s1,s3
    80004dfc:	00349493          	slli	s1,s1,0x3
    80004e00:	009b04b3          	add	s1,s6,s1
    80004e04:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004e08:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004e0c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004e10:	02800513          	li	a0,40
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	474080e7          	jalr	1140(ra) # 80002288 <_Znwm>
    80004e1c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	5b0080e7          	jalr	1456(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80004e28:	00008797          	auipc	a5,0x8
    80004e2c:	f2878793          	addi	a5,a5,-216 # 8000cd50 <_ZTV8Consumer+0x10>
    80004e30:	00fbb023          	sd	a5,0(s7)
    80004e34:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004e38:	000b8513          	mv	a0,s7
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	744080e7          	jalr	1860(ra) # 80002580 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004e44:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004e48:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004e4c:	00008797          	auipc	a5,0x8
    80004e50:	0e47b783          	ld	a5,228(a5) # 8000cf30 <_ZL10waitForAll>
    80004e54:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004e58:	02800513          	li	a0,40
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	42c080e7          	jalr	1068(ra) # 80002288 <_Znwm>
    80004e64:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004e68:	ffffd097          	auipc	ra,0xffffd
    80004e6c:	568080e7          	jalr	1384(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80004e70:	00008797          	auipc	a5,0x8
    80004e74:	e9078793          	addi	a5,a5,-368 # 8000cd00 <_ZTV16ProducerKeyborad+0x10>
    80004e78:	00f4b023          	sd	a5,0(s1)
    80004e7c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004e80:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004e84:	00048513          	mv	a0,s1
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	6f8080e7          	jalr	1784(ra) # 80002580 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004e90:	00100913          	li	s2,1
    80004e94:	0300006f          	j	80004ec4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004e98:	00008797          	auipc	a5,0x8
    80004e9c:	e9078793          	addi	a5,a5,-368 # 8000cd28 <_ZTV8Producer+0x10>
    80004ea0:	00fcb023          	sd	a5,0(s9)
    80004ea4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004ea8:	00391793          	slli	a5,s2,0x3
    80004eac:	00fa07b3          	add	a5,s4,a5
    80004eb0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004eb4:	000c8513          	mv	a0,s9
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	6c8080e7          	jalr	1736(ra) # 80002580 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004ec0:	0019091b          	addiw	s2,s2,1
    80004ec4:	05395263          	bge	s2,s3,80004f08 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004ec8:	00191493          	slli	s1,s2,0x1
    80004ecc:	012484b3          	add	s1,s1,s2
    80004ed0:	00349493          	slli	s1,s1,0x3
    80004ed4:	009b04b3          	add	s1,s6,s1
    80004ed8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004edc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004ee0:	00008797          	auipc	a5,0x8
    80004ee4:	0507b783          	ld	a5,80(a5) # 8000cf30 <_ZL10waitForAll>
    80004ee8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004eec:	02800513          	li	a0,40
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	398080e7          	jalr	920(ra) # 80002288 <_Znwm>
    80004ef8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	4d4080e7          	jalr	1236(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80004f04:	f95ff06f          	j	80004e98 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	500080e7          	jalr	1280(ra) # 80002408 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f10:	00000493          	li	s1,0
    80004f14:	0099ce63          	blt	s3,s1,80004f30 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004f18:	00008517          	auipc	a0,0x8
    80004f1c:	01853503          	ld	a0,24(a0) # 8000cf30 <_ZL10waitForAll>
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	634080e7          	jalr	1588(ra) # 80002554 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f28:	0014849b          	addiw	s1,s1,1
    80004f2c:	fe9ff06f          	j	80004f14 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004f30:	00008517          	auipc	a0,0x8
    80004f34:	00053503          	ld	a0,0(a0) # 8000cf30 <_ZL10waitForAll>
    80004f38:	00050863          	beqz	a0,80004f48 <_Z20testConsumerProducerv+0x2f4>
    80004f3c:	00053783          	ld	a5,0(a0)
    80004f40:	0087b783          	ld	a5,8(a5)
    80004f44:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004f48:	00000493          	li	s1,0
    80004f4c:	0080006f          	j	80004f54 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004f50:	0014849b          	addiw	s1,s1,1
    80004f54:	0334d263          	bge	s1,s3,80004f78 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004f58:	00349793          	slli	a5,s1,0x3
    80004f5c:	00fa07b3          	add	a5,s4,a5
    80004f60:	0007b503          	ld	a0,0(a5)
    80004f64:	fe0506e3          	beqz	a0,80004f50 <_Z20testConsumerProducerv+0x2fc>
    80004f68:	00053783          	ld	a5,0(a0)
    80004f6c:	0087b783          	ld	a5,8(a5)
    80004f70:	000780e7          	jalr	a5
    80004f74:	fddff06f          	j	80004f50 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004f78:	000b8a63          	beqz	s7,80004f8c <_Z20testConsumerProducerv+0x338>
    80004f7c:	000bb783          	ld	a5,0(s7)
    80004f80:	0087b783          	ld	a5,8(a5)
    80004f84:	000b8513          	mv	a0,s7
    80004f88:	000780e7          	jalr	a5
    delete buffer;
    80004f8c:	000a8e63          	beqz	s5,80004fa8 <_Z20testConsumerProducerv+0x354>
    80004f90:	000a8513          	mv	a0,s5
    80004f94:	00002097          	auipc	ra,0x2
    80004f98:	870080e7          	jalr	-1936(ra) # 80006804 <_ZN9BufferCPPD1Ev>
    80004f9c:	000a8513          	mv	a0,s5
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	338080e7          	jalr	824(ra) # 800022d8 <_ZdlPv>
    80004fa8:	000c0113          	mv	sp,s8
}
    80004fac:	f8040113          	addi	sp,s0,-128
    80004fb0:	07813083          	ld	ra,120(sp)
    80004fb4:	07013403          	ld	s0,112(sp)
    80004fb8:	06813483          	ld	s1,104(sp)
    80004fbc:	06013903          	ld	s2,96(sp)
    80004fc0:	05813983          	ld	s3,88(sp)
    80004fc4:	05013a03          	ld	s4,80(sp)
    80004fc8:	04813a83          	ld	s5,72(sp)
    80004fcc:	04013b03          	ld	s6,64(sp)
    80004fd0:	03813b83          	ld	s7,56(sp)
    80004fd4:	03013c03          	ld	s8,48(sp)
    80004fd8:	02813c83          	ld	s9,40(sp)
    80004fdc:	08010113          	addi	sp,sp,128
    80004fe0:	00008067          	ret
    80004fe4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fe8:	000a8513          	mv	a0,s5
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	2ec080e7          	jalr	748(ra) # 800022d8 <_ZdlPv>
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	00009097          	auipc	ra,0x9
    80004ffc:	030080e7          	jalr	48(ra) # 8000e028 <_Unwind_Resume>
    80005000:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80005004:	00090513          	mv	a0,s2
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	2d0080e7          	jalr	720(ra) # 800022d8 <_ZdlPv>
    80005010:	00048513          	mv	a0,s1
    80005014:	00009097          	auipc	ra,0x9
    80005018:	014080e7          	jalr	20(ra) # 8000e028 <_Unwind_Resume>
    8000501c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80005020:	000b8513          	mv	a0,s7
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	2b4080e7          	jalr	692(ra) # 800022d8 <_ZdlPv>
    8000502c:	00048513          	mv	a0,s1
    80005030:	00009097          	auipc	ra,0x9
    80005034:	ff8080e7          	jalr	-8(ra) # 8000e028 <_Unwind_Resume>
    80005038:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000503c:	00048513          	mv	a0,s1
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	298080e7          	jalr	664(ra) # 800022d8 <_ZdlPv>
    80005048:	00090513          	mv	a0,s2
    8000504c:	00009097          	auipc	ra,0x9
    80005050:	fdc080e7          	jalr	-36(ra) # 8000e028 <_Unwind_Resume>
    80005054:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80005058:	000c8513          	mv	a0,s9
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	27c080e7          	jalr	636(ra) # 800022d8 <_ZdlPv>
    80005064:	00048513          	mv	a0,s1
    80005068:	00009097          	auipc	ra,0x9
    8000506c:	fc0080e7          	jalr	-64(ra) # 8000e028 <_Unwind_Resume>

0000000080005070 <_ZN8Consumer3runEv>:
    void run() override {
    80005070:	fd010113          	addi	sp,sp,-48
    80005074:	02113423          	sd	ra,40(sp)
    80005078:	02813023          	sd	s0,32(sp)
    8000507c:	00913c23          	sd	s1,24(sp)
    80005080:	01213823          	sd	s2,16(sp)
    80005084:	01313423          	sd	s3,8(sp)
    80005088:	03010413          	addi	s0,sp,48
    8000508c:	00050913          	mv	s2,a0
        int i = 0;
    80005090:	00000993          	li	s3,0
    80005094:	0100006f          	j	800050a4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80005098:	00a00513          	li	a0,10
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	3e4080e7          	jalr	996(ra) # 80002480 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800050a4:	00008797          	auipc	a5,0x8
    800050a8:	e847a783          	lw	a5,-380(a5) # 8000cf28 <_ZL9threadEnd>
    800050ac:	04079a63          	bnez	a5,80005100 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800050b0:	02093783          	ld	a5,32(s2)
    800050b4:	0087b503          	ld	a0,8(a5)
    800050b8:	00001097          	auipc	ra,0x1
    800050bc:	638080e7          	jalr	1592(ra) # 800066f0 <_ZN9BufferCPP3getEv>
            i++;
    800050c0:	0019849b          	addiw	s1,s3,1
    800050c4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800050c8:	0ff57513          	andi	a0,a0,255
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	3b4080e7          	jalr	948(ra) # 80002480 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800050d4:	05000793          	li	a5,80
    800050d8:	02f4e4bb          	remw	s1,s1,a5
    800050dc:	fc0494e3          	bnez	s1,800050a4 <_ZN8Consumer3runEv+0x34>
    800050e0:	fb9ff06f          	j	80005098 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800050e4:	02093783          	ld	a5,32(s2)
    800050e8:	0087b503          	ld	a0,8(a5)
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	604080e7          	jalr	1540(ra) # 800066f0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800050f4:	0ff57513          	andi	a0,a0,255
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	388080e7          	jalr	904(ra) # 80002480 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80005100:	02093783          	ld	a5,32(s2)
    80005104:	0087b503          	ld	a0,8(a5)
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	674080e7          	jalr	1652(ra) # 8000677c <_ZN9BufferCPP6getCntEv>
    80005110:	fca04ae3          	bgtz	a0,800050e4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80005114:	02093783          	ld	a5,32(s2)
    80005118:	0107b503          	ld	a0,16(a5)
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	4b8080e7          	jalr	1208(ra) # 800025d4 <_ZN9Semaphore6signalEv>
    }
    80005124:	02813083          	ld	ra,40(sp)
    80005128:	02013403          	ld	s0,32(sp)
    8000512c:	01813483          	ld	s1,24(sp)
    80005130:	01013903          	ld	s2,16(sp)
    80005134:	00813983          	ld	s3,8(sp)
    80005138:	03010113          	addi	sp,sp,48
    8000513c:	00008067          	ret

0000000080005140 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80005140:	ff010113          	addi	sp,sp,-16
    80005144:	00113423          	sd	ra,8(sp)
    80005148:	00813023          	sd	s0,0(sp)
    8000514c:	01010413          	addi	s0,sp,16
    80005150:	00008797          	auipc	a5,0x8
    80005154:	c0078793          	addi	a5,a5,-1024 # 8000cd50 <_ZTV8Consumer+0x10>
    80005158:	00f53023          	sd	a5,0(a0)
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	4dc080e7          	jalr	1244(ra) # 80002638 <_ZN6ThreadD1Ev>
    80005164:	00813083          	ld	ra,8(sp)
    80005168:	00013403          	ld	s0,0(sp)
    8000516c:	01010113          	addi	sp,sp,16
    80005170:	00008067          	ret

0000000080005174 <_ZN8ConsumerD0Ev>:
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	00813823          	sd	s0,16(sp)
    80005180:	00913423          	sd	s1,8(sp)
    80005184:	02010413          	addi	s0,sp,32
    80005188:	00050493          	mv	s1,a0
    8000518c:	00008797          	auipc	a5,0x8
    80005190:	bc478793          	addi	a5,a5,-1084 # 8000cd50 <_ZTV8Consumer+0x10>
    80005194:	00f53023          	sd	a5,0(a0)
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	4a0080e7          	jalr	1184(ra) # 80002638 <_ZN6ThreadD1Ev>
    800051a0:	00048513          	mv	a0,s1
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	134080e7          	jalr	308(ra) # 800022d8 <_ZdlPv>
    800051ac:	01813083          	ld	ra,24(sp)
    800051b0:	01013403          	ld	s0,16(sp)
    800051b4:	00813483          	ld	s1,8(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret

00000000800051c0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800051c0:	ff010113          	addi	sp,sp,-16
    800051c4:	00113423          	sd	ra,8(sp)
    800051c8:	00813023          	sd	s0,0(sp)
    800051cc:	01010413          	addi	s0,sp,16
    800051d0:	00008797          	auipc	a5,0x8
    800051d4:	b3078793          	addi	a5,a5,-1232 # 8000cd00 <_ZTV16ProducerKeyborad+0x10>
    800051d8:	00f53023          	sd	a5,0(a0)
    800051dc:	ffffd097          	auipc	ra,0xffffd
    800051e0:	45c080e7          	jalr	1116(ra) # 80002638 <_ZN6ThreadD1Ev>
    800051e4:	00813083          	ld	ra,8(sp)
    800051e8:	00013403          	ld	s0,0(sp)
    800051ec:	01010113          	addi	sp,sp,16
    800051f0:	00008067          	ret

00000000800051f4 <_ZN16ProducerKeyboradD0Ev>:
    800051f4:	fe010113          	addi	sp,sp,-32
    800051f8:	00113c23          	sd	ra,24(sp)
    800051fc:	00813823          	sd	s0,16(sp)
    80005200:	00913423          	sd	s1,8(sp)
    80005204:	02010413          	addi	s0,sp,32
    80005208:	00050493          	mv	s1,a0
    8000520c:	00008797          	auipc	a5,0x8
    80005210:	af478793          	addi	a5,a5,-1292 # 8000cd00 <_ZTV16ProducerKeyborad+0x10>
    80005214:	00f53023          	sd	a5,0(a0)
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	420080e7          	jalr	1056(ra) # 80002638 <_ZN6ThreadD1Ev>
    80005220:	00048513          	mv	a0,s1
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	0b4080e7          	jalr	180(ra) # 800022d8 <_ZdlPv>
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret

0000000080005240 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80005240:	ff010113          	addi	sp,sp,-16
    80005244:	00113423          	sd	ra,8(sp)
    80005248:	00813023          	sd	s0,0(sp)
    8000524c:	01010413          	addi	s0,sp,16
    80005250:	00008797          	auipc	a5,0x8
    80005254:	ad878793          	addi	a5,a5,-1320 # 8000cd28 <_ZTV8Producer+0x10>
    80005258:	00f53023          	sd	a5,0(a0)
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	3dc080e7          	jalr	988(ra) # 80002638 <_ZN6ThreadD1Ev>
    80005264:	00813083          	ld	ra,8(sp)
    80005268:	00013403          	ld	s0,0(sp)
    8000526c:	01010113          	addi	sp,sp,16
    80005270:	00008067          	ret

0000000080005274 <_ZN8ProducerD0Ev>:
    80005274:	fe010113          	addi	sp,sp,-32
    80005278:	00113c23          	sd	ra,24(sp)
    8000527c:	00813823          	sd	s0,16(sp)
    80005280:	00913423          	sd	s1,8(sp)
    80005284:	02010413          	addi	s0,sp,32
    80005288:	00050493          	mv	s1,a0
    8000528c:	00008797          	auipc	a5,0x8
    80005290:	a9c78793          	addi	a5,a5,-1380 # 8000cd28 <_ZTV8Producer+0x10>
    80005294:	00f53023          	sd	a5,0(a0)
    80005298:	ffffd097          	auipc	ra,0xffffd
    8000529c:	3a0080e7          	jalr	928(ra) # 80002638 <_ZN6ThreadD1Ev>
    800052a0:	00048513          	mv	a0,s1
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	034080e7          	jalr	52(ra) # 800022d8 <_ZdlPv>
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret

00000000800052c0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00813823          	sd	s0,16(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	730080e7          	jalr	1840(ra) # 80001a08 <_Z4getcv>
    800052e0:	0005059b          	sext.w	a1,a0
    800052e4:	01b00793          	li	a5,27
    800052e8:	00f58c63          	beq	a1,a5,80005300 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800052ec:	0204b783          	ld	a5,32(s1)
    800052f0:	0087b503          	ld	a0,8(a5)
    800052f4:	00001097          	auipc	ra,0x1
    800052f8:	36c080e7          	jalr	876(ra) # 80006660 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800052fc:	fddff06f          	j	800052d8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005300:	00100793          	li	a5,1
    80005304:	00008717          	auipc	a4,0x8
    80005308:	c2f72223          	sw	a5,-988(a4) # 8000cf28 <_ZL9threadEnd>
        td->buffer->put('!');
    8000530c:	0204b783          	ld	a5,32(s1)
    80005310:	02100593          	li	a1,33
    80005314:	0087b503          	ld	a0,8(a5)
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	348080e7          	jalr	840(ra) # 80006660 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005320:	0204b783          	ld	a5,32(s1)
    80005324:	0107b503          	ld	a0,16(a5)
    80005328:	ffffd097          	auipc	ra,0xffffd
    8000532c:	2ac080e7          	jalr	684(ra) # 800025d4 <_ZN9Semaphore6signalEv>
    }
    80005330:	01813083          	ld	ra,24(sp)
    80005334:	01013403          	ld	s0,16(sp)
    80005338:	00813483          	ld	s1,8(sp)
    8000533c:	02010113          	addi	sp,sp,32
    80005340:	00008067          	ret

0000000080005344 <_ZN8Producer3runEv>:
    void run() override {
    80005344:	fe010113          	addi	sp,sp,-32
    80005348:	00113c23          	sd	ra,24(sp)
    8000534c:	00813823          	sd	s0,16(sp)
    80005350:	00913423          	sd	s1,8(sp)
    80005354:	01213023          	sd	s2,0(sp)
    80005358:	02010413          	addi	s0,sp,32
    8000535c:	00050493          	mv	s1,a0
        int i = 0;
    80005360:	00000913          	li	s2,0
        while (!threadEnd) {
    80005364:	00008797          	auipc	a5,0x8
    80005368:	bc47a783          	lw	a5,-1084(a5) # 8000cf28 <_ZL9threadEnd>
    8000536c:	04079263          	bnez	a5,800053b0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005370:	0204b783          	ld	a5,32(s1)
    80005374:	0007a583          	lw	a1,0(a5)
    80005378:	0305859b          	addiw	a1,a1,48
    8000537c:	0087b503          	ld	a0,8(a5)
    80005380:	00001097          	auipc	ra,0x1
    80005384:	2e0080e7          	jalr	736(ra) # 80006660 <_ZN9BufferCPP3putEi>
            i++;
    80005388:	0019071b          	addiw	a4,s2,1
    8000538c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005390:	0204b783          	ld	a5,32(s1)
    80005394:	0007a783          	lw	a5,0(a5)
    80005398:	00e787bb          	addw	a5,a5,a4
    8000539c:	00500513          	li	a0,5
    800053a0:	02a7e53b          	remw	a0,a5,a0
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	08c080e7          	jalr	140(ra) # 80002430 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800053ac:	fb9ff06f          	j	80005364 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800053b0:	0204b783          	ld	a5,32(s1)
    800053b4:	0107b503          	ld	a0,16(a5)
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	21c080e7          	jalr	540(ra) # 800025d4 <_ZN9Semaphore6signalEv>
    }
    800053c0:	01813083          	ld	ra,24(sp)
    800053c4:	01013403          	ld	s0,16(sp)
    800053c8:	00813483          	ld	s1,8(sp)
    800053cc:	00013903          	ld	s2,0(sp)
    800053d0:	02010113          	addi	sp,sp,32
    800053d4:	00008067          	ret

00000000800053d8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800053d8:	fe010113          	addi	sp,sp,-32
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00913423          	sd	s1,8(sp)
    800053e8:	01213023          	sd	s2,0(sp)
    800053ec:	02010413          	addi	s0,sp,32
    800053f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053f4:	00100793          	li	a5,1
    800053f8:	02a7f863          	bgeu	a5,a0,80005428 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053fc:	00a00793          	li	a5,10
    80005400:	02f577b3          	remu	a5,a0,a5
    80005404:	02078e63          	beqz	a5,80005440 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005408:	fff48513          	addi	a0,s1,-1
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	fcc080e7          	jalr	-52(ra) # 800053d8 <_ZL9fibonaccim>
    80005414:	00050913          	mv	s2,a0
    80005418:	ffe48513          	addi	a0,s1,-2
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	fbc080e7          	jalr	-68(ra) # 800053d8 <_ZL9fibonaccim>
    80005424:	00a90533          	add	a0,s2,a0
}
    80005428:	01813083          	ld	ra,24(sp)
    8000542c:	01013403          	ld	s0,16(sp)
    80005430:	00813483          	ld	s1,8(sp)
    80005434:	00013903          	ld	s2,0(sp)
    80005438:	02010113          	addi	sp,sp,32
    8000543c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005440:	ffffc097          	auipc	ra,0xffffc
    80005444:	50c080e7          	jalr	1292(ra) # 8000194c <_Z15thread_dispatchv>
    80005448:	fc1ff06f          	j	80005408 <_ZL9fibonaccim+0x30>

000000008000544c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	01213023          	sd	s2,0(sp)
    80005460:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005464:	00a00493          	li	s1,10
    80005468:	0400006f          	j	800054a8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000546c:	00005517          	auipc	a0,0x5
    80005470:	15450513          	addi	a0,a0,340 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    80005474:	00001097          	auipc	ra,0x1
    80005478:	dc8080e7          	jalr	-568(ra) # 8000623c <_Z11printStringPKc>
    8000547c:	00000613          	li	a2,0
    80005480:	00a00593          	li	a1,10
    80005484:	00048513          	mv	a0,s1
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	f64080e7          	jalr	-156(ra) # 800063ec <_Z8printIntiii>
    80005490:	00005517          	auipc	a0,0x5
    80005494:	32050513          	addi	a0,a0,800 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005498:	00001097          	auipc	ra,0x1
    8000549c:	da4080e7          	jalr	-604(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800054a0:	0014849b          	addiw	s1,s1,1
    800054a4:	0ff4f493          	andi	s1,s1,255
    800054a8:	00c00793          	li	a5,12
    800054ac:	fc97f0e3          	bgeu	a5,s1,8000546c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800054b0:	00005517          	auipc	a0,0x5
    800054b4:	11850513          	addi	a0,a0,280 # 8000a5c8 <_ZZ13SprintIntegermE6digits+0x160>
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	d84080e7          	jalr	-636(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054c0:	00500313          	li	t1,5
    thread_dispatch();
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	488080e7          	jalr	1160(ra) # 8000194c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800054cc:	01000513          	li	a0,16
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	f08080e7          	jalr	-248(ra) # 800053d8 <_ZL9fibonaccim>
    800054d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054dc:	00005517          	auipc	a0,0x5
    800054e0:	0fc50513          	addi	a0,a0,252 # 8000a5d8 <_ZZ13SprintIntegermE6digits+0x170>
    800054e4:	00001097          	auipc	ra,0x1
    800054e8:	d58080e7          	jalr	-680(ra) # 8000623c <_Z11printStringPKc>
    800054ec:	00000613          	li	a2,0
    800054f0:	00a00593          	li	a1,10
    800054f4:	0009051b          	sext.w	a0,s2
    800054f8:	00001097          	auipc	ra,0x1
    800054fc:	ef4080e7          	jalr	-268(ra) # 800063ec <_Z8printIntiii>
    80005500:	00005517          	auipc	a0,0x5
    80005504:	2b050513          	addi	a0,a0,688 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005508:	00001097          	auipc	ra,0x1
    8000550c:	d34080e7          	jalr	-716(ra) # 8000623c <_Z11printStringPKc>
    80005510:	0400006f          	j	80005550 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005514:	00005517          	auipc	a0,0x5
    80005518:	0ac50513          	addi	a0,a0,172 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    8000551c:	00001097          	auipc	ra,0x1
    80005520:	d20080e7          	jalr	-736(ra) # 8000623c <_Z11printStringPKc>
    80005524:	00000613          	li	a2,0
    80005528:	00a00593          	li	a1,10
    8000552c:	00048513          	mv	a0,s1
    80005530:	00001097          	auipc	ra,0x1
    80005534:	ebc080e7          	jalr	-324(ra) # 800063ec <_Z8printIntiii>
    80005538:	00005517          	auipc	a0,0x5
    8000553c:	27850513          	addi	a0,a0,632 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005540:	00001097          	auipc	ra,0x1
    80005544:	cfc080e7          	jalr	-772(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005548:	0014849b          	addiw	s1,s1,1
    8000554c:	0ff4f493          	andi	s1,s1,255
    80005550:	00f00793          	li	a5,15
    80005554:	fc97f0e3          	bgeu	a5,s1,80005514 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005558:	00005517          	auipc	a0,0x5
    8000555c:	09050513          	addi	a0,a0,144 # 8000a5e8 <_ZZ13SprintIntegermE6digits+0x180>
    80005560:	00001097          	auipc	ra,0x1
    80005564:	cdc080e7          	jalr	-804(ra) # 8000623c <_Z11printStringPKc>
    finishedD = true;
    80005568:	00100793          	li	a5,1
    8000556c:	00008717          	auipc	a4,0x8
    80005570:	9cf70623          	sb	a5,-1588(a4) # 8000cf38 <_ZL9finishedD>
    thread_dispatch();
    80005574:	ffffc097          	auipc	ra,0xffffc
    80005578:	3d8080e7          	jalr	984(ra) # 8000194c <_Z15thread_dispatchv>
}
    8000557c:	01813083          	ld	ra,24(sp)
    80005580:	01013403          	ld	s0,16(sp)
    80005584:	00813483          	ld	s1,8(sp)
    80005588:	00013903          	ld	s2,0(sp)
    8000558c:	02010113          	addi	sp,sp,32
    80005590:	00008067          	ret

0000000080005594 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005594:	fe010113          	addi	sp,sp,-32
    80005598:	00113c23          	sd	ra,24(sp)
    8000559c:	00813823          	sd	s0,16(sp)
    800055a0:	00913423          	sd	s1,8(sp)
    800055a4:	01213023          	sd	s2,0(sp)
    800055a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800055ac:	00000493          	li	s1,0
    800055b0:	0400006f          	j	800055f0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800055b4:	00005517          	auipc	a0,0x5
    800055b8:	fdc50513          	addi	a0,a0,-36 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    800055bc:	00001097          	auipc	ra,0x1
    800055c0:	c80080e7          	jalr	-896(ra) # 8000623c <_Z11printStringPKc>
    800055c4:	00000613          	li	a2,0
    800055c8:	00a00593          	li	a1,10
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00001097          	auipc	ra,0x1
    800055d4:	e1c080e7          	jalr	-484(ra) # 800063ec <_Z8printIntiii>
    800055d8:	00005517          	auipc	a0,0x5
    800055dc:	1d850513          	addi	a0,a0,472 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800055e0:	00001097          	auipc	ra,0x1
    800055e4:	c5c080e7          	jalr	-932(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800055e8:	0014849b          	addiw	s1,s1,1
    800055ec:	0ff4f493          	andi	s1,s1,255
    800055f0:	00200793          	li	a5,2
    800055f4:	fc97f0e3          	bgeu	a5,s1,800055b4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800055f8:	00005517          	auipc	a0,0x5
    800055fc:	fa050513          	addi	a0,a0,-96 # 8000a598 <_ZZ13SprintIntegermE6digits+0x130>
    80005600:	00001097          	auipc	ra,0x1
    80005604:	c3c080e7          	jalr	-964(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005608:	00700313          	li	t1,7
    thread_dispatch();
    8000560c:	ffffc097          	auipc	ra,0xffffc
    80005610:	340080e7          	jalr	832(ra) # 8000194c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005614:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005618:	00005517          	auipc	a0,0x5
    8000561c:	f9050513          	addi	a0,a0,-112 # 8000a5a8 <_ZZ13SprintIntegermE6digits+0x140>
    80005620:	00001097          	auipc	ra,0x1
    80005624:	c1c080e7          	jalr	-996(ra) # 8000623c <_Z11printStringPKc>
    80005628:	00000613          	li	a2,0
    8000562c:	00a00593          	li	a1,10
    80005630:	0009051b          	sext.w	a0,s2
    80005634:	00001097          	auipc	ra,0x1
    80005638:	db8080e7          	jalr	-584(ra) # 800063ec <_Z8printIntiii>
    8000563c:	00005517          	auipc	a0,0x5
    80005640:	17450513          	addi	a0,a0,372 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005644:	00001097          	auipc	ra,0x1
    80005648:	bf8080e7          	jalr	-1032(ra) # 8000623c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000564c:	00c00513          	li	a0,12
    80005650:	00000097          	auipc	ra,0x0
    80005654:	d88080e7          	jalr	-632(ra) # 800053d8 <_ZL9fibonaccim>
    80005658:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000565c:	00005517          	auipc	a0,0x5
    80005660:	f5450513          	addi	a0,a0,-172 # 8000a5b0 <_ZZ13SprintIntegermE6digits+0x148>
    80005664:	00001097          	auipc	ra,0x1
    80005668:	bd8080e7          	jalr	-1064(ra) # 8000623c <_Z11printStringPKc>
    8000566c:	00000613          	li	a2,0
    80005670:	00a00593          	li	a1,10
    80005674:	0009051b          	sext.w	a0,s2
    80005678:	00001097          	auipc	ra,0x1
    8000567c:	d74080e7          	jalr	-652(ra) # 800063ec <_Z8printIntiii>
    80005680:	00005517          	auipc	a0,0x5
    80005684:	13050513          	addi	a0,a0,304 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	bb4080e7          	jalr	-1100(ra) # 8000623c <_Z11printStringPKc>
    80005690:	0400006f          	j	800056d0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005694:	00005517          	auipc	a0,0x5
    80005698:	efc50513          	addi	a0,a0,-260 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    8000569c:	00001097          	auipc	ra,0x1
    800056a0:	ba0080e7          	jalr	-1120(ra) # 8000623c <_Z11printStringPKc>
    800056a4:	00000613          	li	a2,0
    800056a8:	00a00593          	li	a1,10
    800056ac:	00048513          	mv	a0,s1
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	d3c080e7          	jalr	-708(ra) # 800063ec <_Z8printIntiii>
    800056b8:	00005517          	auipc	a0,0x5
    800056bc:	0f850513          	addi	a0,a0,248 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	b7c080e7          	jalr	-1156(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800056c8:	0014849b          	addiw	s1,s1,1
    800056cc:	0ff4f493          	andi	s1,s1,255
    800056d0:	00500793          	li	a5,5
    800056d4:	fc97f0e3          	bgeu	a5,s1,80005694 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800056d8:	00005517          	auipc	a0,0x5
    800056dc:	e9050513          	addi	a0,a0,-368 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    800056e0:	00001097          	auipc	ra,0x1
    800056e4:	b5c080e7          	jalr	-1188(ra) # 8000623c <_Z11printStringPKc>
    finishedC = true;
    800056e8:	00100793          	li	a5,1
    800056ec:	00008717          	auipc	a4,0x8
    800056f0:	84f706a3          	sb	a5,-1971(a4) # 8000cf39 <_ZL9finishedC>
    thread_dispatch();
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	258080e7          	jalr	600(ra) # 8000194c <_Z15thread_dispatchv>
}
    800056fc:	01813083          	ld	ra,24(sp)
    80005700:	01013403          	ld	s0,16(sp)
    80005704:	00813483          	ld	s1,8(sp)
    80005708:	00013903          	ld	s2,0(sp)
    8000570c:	02010113          	addi	sp,sp,32
    80005710:	00008067          	ret

0000000080005714 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005714:	fe010113          	addi	sp,sp,-32
    80005718:	00113c23          	sd	ra,24(sp)
    8000571c:	00813823          	sd	s0,16(sp)
    80005720:	00913423          	sd	s1,8(sp)
    80005724:	01213023          	sd	s2,0(sp)
    80005728:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000572c:	00000913          	li	s2,0
    80005730:	0380006f          	j	80005768 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	218080e7          	jalr	536(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000573c:	00148493          	addi	s1,s1,1
    80005740:	000027b7          	lui	a5,0x2
    80005744:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005748:	0097ee63          	bltu	a5,s1,80005764 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000574c:	00000713          	li	a4,0
    80005750:	000077b7          	lui	a5,0x7
    80005754:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005758:	fce7eee3          	bltu	a5,a4,80005734 <_ZL11workerBodyBPv+0x20>
    8000575c:	00170713          	addi	a4,a4,1
    80005760:	ff1ff06f          	j	80005750 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005764:	00190913          	addi	s2,s2,1
    80005768:	00f00793          	li	a5,15
    8000576c:	0527e063          	bltu	a5,s2,800057ac <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005770:	00005517          	auipc	a0,0x5
    80005774:	e0850513          	addi	a0,a0,-504 # 8000a578 <_ZZ13SprintIntegermE6digits+0x110>
    80005778:	00001097          	auipc	ra,0x1
    8000577c:	ac4080e7          	jalr	-1340(ra) # 8000623c <_Z11printStringPKc>
    80005780:	00000613          	li	a2,0
    80005784:	00a00593          	li	a1,10
    80005788:	0009051b          	sext.w	a0,s2
    8000578c:	00001097          	auipc	ra,0x1
    80005790:	c60080e7          	jalr	-928(ra) # 800063ec <_Z8printIntiii>
    80005794:	00005517          	auipc	a0,0x5
    80005798:	01c50513          	addi	a0,a0,28 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    8000579c:	00001097          	auipc	ra,0x1
    800057a0:	aa0080e7          	jalr	-1376(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057a4:	00000493          	li	s1,0
    800057a8:	f99ff06f          	j	80005740 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800057ac:	00005517          	auipc	a0,0x5
    800057b0:	dd450513          	addi	a0,a0,-556 # 8000a580 <_ZZ13SprintIntegermE6digits+0x118>
    800057b4:	00001097          	auipc	ra,0x1
    800057b8:	a88080e7          	jalr	-1400(ra) # 8000623c <_Z11printStringPKc>
    finishedB = true;
    800057bc:	00100793          	li	a5,1
    800057c0:	00007717          	auipc	a4,0x7
    800057c4:	76f70d23          	sb	a5,1914(a4) # 8000cf3a <_ZL9finishedB>
    thread_dispatch();
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	184080e7          	jalr	388(ra) # 8000194c <_Z15thread_dispatchv>
}
    800057d0:	01813083          	ld	ra,24(sp)
    800057d4:	01013403          	ld	s0,16(sp)
    800057d8:	00813483          	ld	s1,8(sp)
    800057dc:	00013903          	ld	s2,0(sp)
    800057e0:	02010113          	addi	sp,sp,32
    800057e4:	00008067          	ret

00000000800057e8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800057e8:	fe010113          	addi	sp,sp,-32
    800057ec:	00113c23          	sd	ra,24(sp)
    800057f0:	00813823          	sd	s0,16(sp)
    800057f4:	00913423          	sd	s1,8(sp)
    800057f8:	01213023          	sd	s2,0(sp)
    800057fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005800:	00000913          	li	s2,0
    80005804:	0380006f          	j	8000583c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	144080e7          	jalr	324(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005810:	00148493          	addi	s1,s1,1
    80005814:	000027b7          	lui	a5,0x2
    80005818:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000581c:	0097ee63          	bltu	a5,s1,80005838 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005820:	00000713          	li	a4,0
    80005824:	000077b7          	lui	a5,0x7
    80005828:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000582c:	fce7eee3          	bltu	a5,a4,80005808 <_ZL11workerBodyAPv+0x20>
    80005830:	00170713          	addi	a4,a4,1
    80005834:	ff1ff06f          	j	80005824 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005838:	00190913          	addi	s2,s2,1
    8000583c:	00900793          	li	a5,9
    80005840:	0527e063          	bltu	a5,s2,80005880 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005844:	00005517          	auipc	a0,0x5
    80005848:	d1c50513          	addi	a0,a0,-740 # 8000a560 <_ZZ13SprintIntegermE6digits+0xf8>
    8000584c:	00001097          	auipc	ra,0x1
    80005850:	9f0080e7          	jalr	-1552(ra) # 8000623c <_Z11printStringPKc>
    80005854:	00000613          	li	a2,0
    80005858:	00a00593          	li	a1,10
    8000585c:	0009051b          	sext.w	a0,s2
    80005860:	00001097          	auipc	ra,0x1
    80005864:	b8c080e7          	jalr	-1140(ra) # 800063ec <_Z8printIntiii>
    80005868:	00005517          	auipc	a0,0x5
    8000586c:	f4850513          	addi	a0,a0,-184 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80005870:	00001097          	auipc	ra,0x1
    80005874:	9cc080e7          	jalr	-1588(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005878:	00000493          	li	s1,0
    8000587c:	f99ff06f          	j	80005814 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005880:	00005517          	auipc	a0,0x5
    80005884:	ce850513          	addi	a0,a0,-792 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    80005888:	00001097          	auipc	ra,0x1
    8000588c:	9b4080e7          	jalr	-1612(ra) # 8000623c <_Z11printStringPKc>
    finishedA = true;
    80005890:	00100793          	li	a5,1
    80005894:	00007717          	auipc	a4,0x7
    80005898:	6af703a3          	sb	a5,1703(a4) # 8000cf3b <_ZL9finishedA>
}
    8000589c:	01813083          	ld	ra,24(sp)
    800058a0:	01013403          	ld	s0,16(sp)
    800058a4:	00813483          	ld	s1,8(sp)
    800058a8:	00013903          	ld	s2,0(sp)
    800058ac:	02010113          	addi	sp,sp,32
    800058b0:	00008067          	ret

00000000800058b4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800058b4:	fd010113          	addi	sp,sp,-48
    800058b8:	02113423          	sd	ra,40(sp)
    800058bc:	02813023          	sd	s0,32(sp)
    800058c0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800058c4:	00000613          	li	a2,0
    800058c8:	00000597          	auipc	a1,0x0
    800058cc:	f2058593          	addi	a1,a1,-224 # 800057e8 <_ZL11workerBodyAPv>
    800058d0:	fd040513          	addi	a0,s0,-48
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	fbc080e7          	jalr	-68(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800058dc:	00005517          	auipc	a0,0x5
    800058e0:	d1c50513          	addi	a0,a0,-740 # 8000a5f8 <_ZZ13SprintIntegermE6digits+0x190>
    800058e4:	00001097          	auipc	ra,0x1
    800058e8:	958080e7          	jalr	-1704(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058ec:	00000613          	li	a2,0
    800058f0:	00000597          	auipc	a1,0x0
    800058f4:	e2458593          	addi	a1,a1,-476 # 80005714 <_ZL11workerBodyBPv>
    800058f8:	fd840513          	addi	a0,s0,-40
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	f94080e7          	jalr	-108(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005904:	00005517          	auipc	a0,0x5
    80005908:	d0c50513          	addi	a0,a0,-756 # 8000a610 <_ZZ13SprintIntegermE6digits+0x1a8>
    8000590c:	00001097          	auipc	ra,0x1
    80005910:	930080e7          	jalr	-1744(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005914:	00000613          	li	a2,0
    80005918:	00000597          	auipc	a1,0x0
    8000591c:	c7c58593          	addi	a1,a1,-900 # 80005594 <_ZL11workerBodyCPv>
    80005920:	fe040513          	addi	a0,s0,-32
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	f6c080e7          	jalr	-148(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000592c:	00005517          	auipc	a0,0x5
    80005930:	cfc50513          	addi	a0,a0,-772 # 8000a628 <_ZZ13SprintIntegermE6digits+0x1c0>
    80005934:	00001097          	auipc	ra,0x1
    80005938:	908080e7          	jalr	-1784(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000593c:	00000613          	li	a2,0
    80005940:	00000597          	auipc	a1,0x0
    80005944:	b0c58593          	addi	a1,a1,-1268 # 8000544c <_ZL11workerBodyDPv>
    80005948:	fe840513          	addi	a0,s0,-24
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	f44080e7          	jalr	-188(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005954:	00005517          	auipc	a0,0x5
    80005958:	cec50513          	addi	a0,a0,-788 # 8000a640 <_ZZ13SprintIntegermE6digits+0x1d8>
    8000595c:	00001097          	auipc	ra,0x1
    80005960:	8e0080e7          	jalr	-1824(ra) # 8000623c <_Z11printStringPKc>
    80005964:	00c0006f          	j	80005970 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	fe4080e7          	jalr	-28(ra) # 8000194c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005970:	00007797          	auipc	a5,0x7
    80005974:	5cb7c783          	lbu	a5,1483(a5) # 8000cf3b <_ZL9finishedA>
    80005978:	fe0788e3          	beqz	a5,80005968 <_Z18Threads_C_API_testv+0xb4>
    8000597c:	00007797          	auipc	a5,0x7
    80005980:	5be7c783          	lbu	a5,1470(a5) # 8000cf3a <_ZL9finishedB>
    80005984:	fe0782e3          	beqz	a5,80005968 <_Z18Threads_C_API_testv+0xb4>
    80005988:	00007797          	auipc	a5,0x7
    8000598c:	5b17c783          	lbu	a5,1457(a5) # 8000cf39 <_ZL9finishedC>
    80005990:	fc078ce3          	beqz	a5,80005968 <_Z18Threads_C_API_testv+0xb4>
    80005994:	00007797          	auipc	a5,0x7
    80005998:	5a47c783          	lbu	a5,1444(a5) # 8000cf38 <_ZL9finishedD>
    8000599c:	fc0786e3          	beqz	a5,80005968 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800059a0:	02813083          	ld	ra,40(sp)
    800059a4:	02013403          	ld	s0,32(sp)
    800059a8:	03010113          	addi	sp,sp,48
    800059ac:	00008067          	ret

00000000800059b0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800059b0:	fd010113          	addi	sp,sp,-48
    800059b4:	02113423          	sd	ra,40(sp)
    800059b8:	02813023          	sd	s0,32(sp)
    800059bc:	00913c23          	sd	s1,24(sp)
    800059c0:	01213823          	sd	s2,16(sp)
    800059c4:	01313423          	sd	s3,8(sp)
    800059c8:	03010413          	addi	s0,sp,48
    800059cc:	00050993          	mv	s3,a0
    800059d0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800059d4:	00000913          	li	s2,0
    800059d8:	00c0006f          	j	800059e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800059dc:	ffffd097          	auipc	ra,0xffffd
    800059e0:	a2c080e7          	jalr	-1492(ra) # 80002408 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	024080e7          	jalr	36(ra) # 80001a08 <_Z4getcv>
    800059ec:	0005059b          	sext.w	a1,a0
    800059f0:	01b00793          	li	a5,27
    800059f4:	02f58a63          	beq	a1,a5,80005a28 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800059f8:	0084b503          	ld	a0,8(s1)
    800059fc:	00001097          	auipc	ra,0x1
    80005a00:	c64080e7          	jalr	-924(ra) # 80006660 <_ZN9BufferCPP3putEi>
        i++;
    80005a04:	0019071b          	addiw	a4,s2,1
    80005a08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005a0c:	0004a683          	lw	a3,0(s1)
    80005a10:	0026979b          	slliw	a5,a3,0x2
    80005a14:	00d787bb          	addw	a5,a5,a3
    80005a18:	0017979b          	slliw	a5,a5,0x1
    80005a1c:	02f767bb          	remw	a5,a4,a5
    80005a20:	fc0792e3          	bnez	a5,800059e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005a24:	fb9ff06f          	j	800059dc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005a28:	00100793          	li	a5,1
    80005a2c:	00007717          	auipc	a4,0x7
    80005a30:	50f72a23          	sw	a5,1300(a4) # 8000cf40 <_ZL9threadEnd>
    td->buffer->put('!');
    80005a34:	0209b783          	ld	a5,32(s3)
    80005a38:	02100593          	li	a1,33
    80005a3c:	0087b503          	ld	a0,8(a5)
    80005a40:	00001097          	auipc	ra,0x1
    80005a44:	c20080e7          	jalr	-992(ra) # 80006660 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005a48:	0104b503          	ld	a0,16(s1)
    80005a4c:	ffffd097          	auipc	ra,0xffffd
    80005a50:	b88080e7          	jalr	-1144(ra) # 800025d4 <_ZN9Semaphore6signalEv>
}
    80005a54:	02813083          	ld	ra,40(sp)
    80005a58:	02013403          	ld	s0,32(sp)
    80005a5c:	01813483          	ld	s1,24(sp)
    80005a60:	01013903          	ld	s2,16(sp)
    80005a64:	00813983          	ld	s3,8(sp)
    80005a68:	03010113          	addi	sp,sp,48
    80005a6c:	00008067          	ret

0000000080005a70 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	01213023          	sd	s2,0(sp)
    80005a84:	02010413          	addi	s0,sp,32
    80005a88:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a8c:	00000913          	li	s2,0
    80005a90:	00c0006f          	j	80005a9c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005a94:	ffffd097          	auipc	ra,0xffffd
    80005a98:	974080e7          	jalr	-1676(ra) # 80002408 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005a9c:	00007797          	auipc	a5,0x7
    80005aa0:	4a47a783          	lw	a5,1188(a5) # 8000cf40 <_ZL9threadEnd>
    80005aa4:	02079e63          	bnez	a5,80005ae0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005aa8:	0004a583          	lw	a1,0(s1)
    80005aac:	0305859b          	addiw	a1,a1,48
    80005ab0:	0084b503          	ld	a0,8(s1)
    80005ab4:	00001097          	auipc	ra,0x1
    80005ab8:	bac080e7          	jalr	-1108(ra) # 80006660 <_ZN9BufferCPP3putEi>
        i++;
    80005abc:	0019071b          	addiw	a4,s2,1
    80005ac0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005ac4:	0004a683          	lw	a3,0(s1)
    80005ac8:	0026979b          	slliw	a5,a3,0x2
    80005acc:	00d787bb          	addw	a5,a5,a3
    80005ad0:	0017979b          	slliw	a5,a5,0x1
    80005ad4:	02f767bb          	remw	a5,a4,a5
    80005ad8:	fc0792e3          	bnez	a5,80005a9c <_ZN12ProducerSync8producerEPv+0x2c>
    80005adc:	fb9ff06f          	j	80005a94 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005ae0:	0104b503          	ld	a0,16(s1)
    80005ae4:	ffffd097          	auipc	ra,0xffffd
    80005ae8:	af0080e7          	jalr	-1296(ra) # 800025d4 <_ZN9Semaphore6signalEv>
}
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	00013903          	ld	s2,0(sp)
    80005afc:	02010113          	addi	sp,sp,32
    80005b00:	00008067          	ret

0000000080005b04 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005b04:	fd010113          	addi	sp,sp,-48
    80005b08:	02113423          	sd	ra,40(sp)
    80005b0c:	02813023          	sd	s0,32(sp)
    80005b10:	00913c23          	sd	s1,24(sp)
    80005b14:	01213823          	sd	s2,16(sp)
    80005b18:	01313423          	sd	s3,8(sp)
    80005b1c:	01413023          	sd	s4,0(sp)
    80005b20:	03010413          	addi	s0,sp,48
    80005b24:	00050993          	mv	s3,a0
    80005b28:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b2c:	00000a13          	li	s4,0
    80005b30:	01c0006f          	j	80005b4c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005b34:	ffffd097          	auipc	ra,0xffffd
    80005b38:	8d4080e7          	jalr	-1836(ra) # 80002408 <_ZN6Thread8dispatchEv>
    80005b3c:	0500006f          	j	80005b8c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005b40:	00a00513          	li	a0,10
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	f04080e7          	jalr	-252(ra) # 80001a48 <_Z4putcc>
    while (!threadEnd) {
    80005b4c:	00007797          	auipc	a5,0x7
    80005b50:	3f47a783          	lw	a5,1012(a5) # 8000cf40 <_ZL9threadEnd>
    80005b54:	06079263          	bnez	a5,80005bb8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005b58:	00893503          	ld	a0,8(s2)
    80005b5c:	00001097          	auipc	ra,0x1
    80005b60:	b94080e7          	jalr	-1132(ra) # 800066f0 <_ZN9BufferCPP3getEv>
        i++;
    80005b64:	001a049b          	addiw	s1,s4,1
    80005b68:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005b6c:	0ff57513          	andi	a0,a0,255
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	ed8080e7          	jalr	-296(ra) # 80001a48 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005b78:	00092703          	lw	a4,0(s2)
    80005b7c:	0027179b          	slliw	a5,a4,0x2
    80005b80:	00e787bb          	addw	a5,a5,a4
    80005b84:	02f4e7bb          	remw	a5,s1,a5
    80005b88:	fa0786e3          	beqz	a5,80005b34 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005b8c:	05000793          	li	a5,80
    80005b90:	02f4e4bb          	remw	s1,s1,a5
    80005b94:	fa049ce3          	bnez	s1,80005b4c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005b98:	fa9ff06f          	j	80005b40 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005b9c:	0209b783          	ld	a5,32(s3)
    80005ba0:	0087b503          	ld	a0,8(a5)
    80005ba4:	00001097          	auipc	ra,0x1
    80005ba8:	b4c080e7          	jalr	-1204(ra) # 800066f0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005bac:	0ff57513          	andi	a0,a0,255
    80005bb0:	ffffd097          	auipc	ra,0xffffd
    80005bb4:	8d0080e7          	jalr	-1840(ra) # 80002480 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005bb8:	0209b783          	ld	a5,32(s3)
    80005bbc:	0087b503          	ld	a0,8(a5)
    80005bc0:	00001097          	auipc	ra,0x1
    80005bc4:	bbc080e7          	jalr	-1092(ra) # 8000677c <_ZN9BufferCPP6getCntEv>
    80005bc8:	fca04ae3          	bgtz	a0,80005b9c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005bcc:	01093503          	ld	a0,16(s2)
    80005bd0:	ffffd097          	auipc	ra,0xffffd
    80005bd4:	a04080e7          	jalr	-1532(ra) # 800025d4 <_ZN9Semaphore6signalEv>
}
    80005bd8:	02813083          	ld	ra,40(sp)
    80005bdc:	02013403          	ld	s0,32(sp)
    80005be0:	01813483          	ld	s1,24(sp)
    80005be4:	01013903          	ld	s2,16(sp)
    80005be8:	00813983          	ld	s3,8(sp)
    80005bec:	00013a03          	ld	s4,0(sp)
    80005bf0:	03010113          	addi	sp,sp,48
    80005bf4:	00008067          	ret

0000000080005bf8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005bf8:	f8010113          	addi	sp,sp,-128
    80005bfc:	06113c23          	sd	ra,120(sp)
    80005c00:	06813823          	sd	s0,112(sp)
    80005c04:	06913423          	sd	s1,104(sp)
    80005c08:	07213023          	sd	s2,96(sp)
    80005c0c:	05313c23          	sd	s3,88(sp)
    80005c10:	05413823          	sd	s4,80(sp)
    80005c14:	05513423          	sd	s5,72(sp)
    80005c18:	05613023          	sd	s6,64(sp)
    80005c1c:	03713c23          	sd	s7,56(sp)
    80005c20:	03813823          	sd	s8,48(sp)
    80005c24:	03913423          	sd	s9,40(sp)
    80005c28:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005c2c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005c30:	00005517          	auipc	a0,0x5
    80005c34:	84850513          	addi	a0,a0,-1976 # 8000a478 <_ZZ13SprintIntegermE6digits+0x10>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	604080e7          	jalr	1540(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80005c40:	01e00593          	li	a1,30
    80005c44:	f8040493          	addi	s1,s0,-128
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	00000097          	auipc	ra,0x0
    80005c50:	678080e7          	jalr	1656(ra) # 800062c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005c54:	00048513          	mv	a0,s1
    80005c58:	00000097          	auipc	ra,0x0
    80005c5c:	744080e7          	jalr	1860(ra) # 8000639c <_Z11stringToIntPKc>
    80005c60:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005c64:	00005517          	auipc	a0,0x5
    80005c68:	83450513          	addi	a0,a0,-1996 # 8000a498 <_ZZ13SprintIntegermE6digits+0x30>
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	5d0080e7          	jalr	1488(ra) # 8000623c <_Z11printStringPKc>
    getString(input, 30);
    80005c74:	01e00593          	li	a1,30
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	00000097          	auipc	ra,0x0
    80005c80:	648080e7          	jalr	1608(ra) # 800062c4 <_Z9getStringPci>
    n = stringToInt(input);
    80005c84:	00048513          	mv	a0,s1
    80005c88:	00000097          	auipc	ra,0x0
    80005c8c:	714080e7          	jalr	1812(ra) # 8000639c <_Z11stringToIntPKc>
    80005c90:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005c94:	00005517          	auipc	a0,0x5
    80005c98:	82450513          	addi	a0,a0,-2012 # 8000a4b8 <_ZZ13SprintIntegermE6digits+0x50>
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	5a0080e7          	jalr	1440(ra) # 8000623c <_Z11printStringPKc>
    80005ca4:	00000613          	li	a2,0
    80005ca8:	00a00593          	li	a1,10
    80005cac:	00090513          	mv	a0,s2
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	73c080e7          	jalr	1852(ra) # 800063ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005cb8:	00005517          	auipc	a0,0x5
    80005cbc:	81850513          	addi	a0,a0,-2024 # 8000a4d0 <_ZZ13SprintIntegermE6digits+0x68>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	57c080e7          	jalr	1404(ra) # 8000623c <_Z11printStringPKc>
    80005cc8:	00000613          	li	a2,0
    80005ccc:	00a00593          	li	a1,10
    80005cd0:	00048513          	mv	a0,s1
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	718080e7          	jalr	1816(ra) # 800063ec <_Z8printIntiii>
    printString(".\n");
    80005cdc:	00005517          	auipc	a0,0x5
    80005ce0:	80c50513          	addi	a0,a0,-2036 # 8000a4e8 <_ZZ13SprintIntegermE6digits+0x80>
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	558080e7          	jalr	1368(ra) # 8000623c <_Z11printStringPKc>
    if(threadNum > n) {
    80005cec:	0324c463          	blt	s1,s2,80005d14 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005cf0:	03205c63          	blez	s2,80005d28 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005cf4:	03800513          	li	a0,56
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	590080e7          	jalr	1424(ra) # 80002288 <_Znwm>
    80005d00:	00050a93          	mv	s5,a0
    80005d04:	00048593          	mv	a1,s1
    80005d08:	00001097          	auipc	ra,0x1
    80005d0c:	804080e7          	jalr	-2044(ra) # 8000650c <_ZN9BufferCPPC1Ei>
    80005d10:	0300006f          	j	80005d40 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005d14:	00004517          	auipc	a0,0x4
    80005d18:	7dc50513          	addi	a0,a0,2012 # 8000a4f0 <_ZZ13SprintIntegermE6digits+0x88>
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	520080e7          	jalr	1312(ra) # 8000623c <_Z11printStringPKc>
        return;
    80005d24:	0140006f          	j	80005d38 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005d28:	00005517          	auipc	a0,0x5
    80005d2c:	80850513          	addi	a0,a0,-2040 # 8000a530 <_ZZ13SprintIntegermE6digits+0xc8>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	50c080e7          	jalr	1292(ra) # 8000623c <_Z11printStringPKc>
        return;
    80005d38:	000b8113          	mv	sp,s7
    80005d3c:	2380006f          	j	80005f74 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005d40:	01000513          	li	a0,16
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	544080e7          	jalr	1348(ra) # 80002288 <_Znwm>
    80005d4c:	00050493          	mv	s1,a0
    80005d50:	00000593          	li	a1,0
    80005d54:	ffffc097          	auipc	ra,0xffffc
    80005d58:	754080e7          	jalr	1876(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    80005d5c:	00007797          	auipc	a5,0x7
    80005d60:	1e97b623          	sd	s1,492(a5) # 8000cf48 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005d64:	00391793          	slli	a5,s2,0x3
    80005d68:	00f78793          	addi	a5,a5,15
    80005d6c:	ff07f793          	andi	a5,a5,-16
    80005d70:	40f10133          	sub	sp,sp,a5
    80005d74:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005d78:	0019071b          	addiw	a4,s2,1
    80005d7c:	00171793          	slli	a5,a4,0x1
    80005d80:	00e787b3          	add	a5,a5,a4
    80005d84:	00379793          	slli	a5,a5,0x3
    80005d88:	00f78793          	addi	a5,a5,15
    80005d8c:	ff07f793          	andi	a5,a5,-16
    80005d90:	40f10133          	sub	sp,sp,a5
    80005d94:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005d98:	00191c13          	slli	s8,s2,0x1
    80005d9c:	012c07b3          	add	a5,s8,s2
    80005da0:	00379793          	slli	a5,a5,0x3
    80005da4:	00fa07b3          	add	a5,s4,a5
    80005da8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005dac:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005db0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005db4:	02800513          	li	a0,40
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	4d0080e7          	jalr	1232(ra) # 80002288 <_Znwm>
    80005dc0:	00050b13          	mv	s6,a0
    80005dc4:	012c0c33          	add	s8,s8,s2
    80005dc8:	003c1c13          	slli	s8,s8,0x3
    80005dcc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	600080e7          	jalr	1536(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80005dd8:	00007797          	auipc	a5,0x7
    80005ddc:	ff078793          	addi	a5,a5,-16 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    80005de0:	00fb3023          	sd	a5,0(s6)
    80005de4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005de8:	000b0513          	mv	a0,s6
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	794080e7          	jalr	1940(ra) # 80002580 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005df4:	00000493          	li	s1,0
    80005df8:	0380006f          	j	80005e30 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005dfc:	00007797          	auipc	a5,0x7
    80005e00:	fa478793          	addi	a5,a5,-92 # 8000cda0 <_ZTV12ProducerSync+0x10>
    80005e04:	00fcb023          	sd	a5,0(s9)
    80005e08:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005e0c:	00349793          	slli	a5,s1,0x3
    80005e10:	00f987b3          	add	a5,s3,a5
    80005e14:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005e18:	00349793          	slli	a5,s1,0x3
    80005e1c:	00f987b3          	add	a5,s3,a5
    80005e20:	0007b503          	ld	a0,0(a5)
    80005e24:	ffffc097          	auipc	ra,0xffffc
    80005e28:	75c080e7          	jalr	1884(ra) # 80002580 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005e2c:	0014849b          	addiw	s1,s1,1
    80005e30:	0b24d063          	bge	s1,s2,80005ed0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005e34:	00149793          	slli	a5,s1,0x1
    80005e38:	009787b3          	add	a5,a5,s1
    80005e3c:	00379793          	slli	a5,a5,0x3
    80005e40:	00fa07b3          	add	a5,s4,a5
    80005e44:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005e48:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005e4c:	00007717          	auipc	a4,0x7
    80005e50:	0fc73703          	ld	a4,252(a4) # 8000cf48 <_ZL10waitForAll>
    80005e54:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005e58:	02905863          	blez	s1,80005e88 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005e5c:	02800513          	li	a0,40
    80005e60:	ffffc097          	auipc	ra,0xffffc
    80005e64:	428080e7          	jalr	1064(ra) # 80002288 <_Znwm>
    80005e68:	00050c93          	mv	s9,a0
    80005e6c:	00149c13          	slli	s8,s1,0x1
    80005e70:	009c0c33          	add	s8,s8,s1
    80005e74:	003c1c13          	slli	s8,s8,0x3
    80005e78:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	554080e7          	jalr	1364(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80005e84:	f79ff06f          	j	80005dfc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005e88:	02800513          	li	a0,40
    80005e8c:	ffffc097          	auipc	ra,0xffffc
    80005e90:	3fc080e7          	jalr	1020(ra) # 80002288 <_Znwm>
    80005e94:	00050c93          	mv	s9,a0
    80005e98:	00149c13          	slli	s8,s1,0x1
    80005e9c:	009c0c33          	add	s8,s8,s1
    80005ea0:	003c1c13          	slli	s8,s8,0x3
    80005ea4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005ea8:	ffffc097          	auipc	ra,0xffffc
    80005eac:	528080e7          	jalr	1320(ra) # 800023d0 <_ZN6ThreadC1Ev>
    80005eb0:	00007797          	auipc	a5,0x7
    80005eb4:	ec878793          	addi	a5,a5,-312 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    80005eb8:	00fcb023          	sd	a5,0(s9)
    80005ebc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ec0:	00349793          	slli	a5,s1,0x3
    80005ec4:	00f987b3          	add	a5,s3,a5
    80005ec8:	0197b023          	sd	s9,0(a5)
    80005ecc:	f4dff06f          	j	80005e18 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005ed0:	ffffc097          	auipc	ra,0xffffc
    80005ed4:	538080e7          	jalr	1336(ra) # 80002408 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ed8:	00000493          	li	s1,0
    80005edc:	00994e63          	blt	s2,s1,80005ef8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ee0:	00007517          	auipc	a0,0x7
    80005ee4:	06853503          	ld	a0,104(a0) # 8000cf48 <_ZL10waitForAll>
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	66c080e7          	jalr	1644(ra) # 80002554 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ef0:	0014849b          	addiw	s1,s1,1
    80005ef4:	fe9ff06f          	j	80005edc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005ef8:	00000493          	li	s1,0
    80005efc:	0080006f          	j	80005f04 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005f00:	0014849b          	addiw	s1,s1,1
    80005f04:	0324d263          	bge	s1,s2,80005f28 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005f08:	00349793          	slli	a5,s1,0x3
    80005f0c:	00f987b3          	add	a5,s3,a5
    80005f10:	0007b503          	ld	a0,0(a5)
    80005f14:	fe0506e3          	beqz	a0,80005f00 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005f18:	00053783          	ld	a5,0(a0)
    80005f1c:	0087b783          	ld	a5,8(a5)
    80005f20:	000780e7          	jalr	a5
    80005f24:	fddff06f          	j	80005f00 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005f28:	000b0a63          	beqz	s6,80005f3c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005f2c:	000b3783          	ld	a5,0(s6)
    80005f30:	0087b783          	ld	a5,8(a5)
    80005f34:	000b0513          	mv	a0,s6
    80005f38:	000780e7          	jalr	a5
    delete waitForAll;
    80005f3c:	00007517          	auipc	a0,0x7
    80005f40:	00c53503          	ld	a0,12(a0) # 8000cf48 <_ZL10waitForAll>
    80005f44:	00050863          	beqz	a0,80005f54 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005f48:	00053783          	ld	a5,0(a0)
    80005f4c:	0087b783          	ld	a5,8(a5)
    80005f50:	000780e7          	jalr	a5
    delete buffer;
    80005f54:	000a8e63          	beqz	s5,80005f70 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005f58:	000a8513          	mv	a0,s5
    80005f5c:	00001097          	auipc	ra,0x1
    80005f60:	8a8080e7          	jalr	-1880(ra) # 80006804 <_ZN9BufferCPPD1Ev>
    80005f64:	000a8513          	mv	a0,s5
    80005f68:	ffffc097          	auipc	ra,0xffffc
    80005f6c:	370080e7          	jalr	880(ra) # 800022d8 <_ZdlPv>
    80005f70:	000b8113          	mv	sp,s7

}
    80005f74:	f8040113          	addi	sp,s0,-128
    80005f78:	07813083          	ld	ra,120(sp)
    80005f7c:	07013403          	ld	s0,112(sp)
    80005f80:	06813483          	ld	s1,104(sp)
    80005f84:	06013903          	ld	s2,96(sp)
    80005f88:	05813983          	ld	s3,88(sp)
    80005f8c:	05013a03          	ld	s4,80(sp)
    80005f90:	04813a83          	ld	s5,72(sp)
    80005f94:	04013b03          	ld	s6,64(sp)
    80005f98:	03813b83          	ld	s7,56(sp)
    80005f9c:	03013c03          	ld	s8,48(sp)
    80005fa0:	02813c83          	ld	s9,40(sp)
    80005fa4:	08010113          	addi	sp,sp,128
    80005fa8:	00008067          	ret
    80005fac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005fb0:	000a8513          	mv	a0,s5
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	324080e7          	jalr	804(ra) # 800022d8 <_ZdlPv>
    80005fbc:	00048513          	mv	a0,s1
    80005fc0:	00008097          	auipc	ra,0x8
    80005fc4:	068080e7          	jalr	104(ra) # 8000e028 <_Unwind_Resume>
    80005fc8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005fcc:	00048513          	mv	a0,s1
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	308080e7          	jalr	776(ra) # 800022d8 <_ZdlPv>
    80005fd8:	00090513          	mv	a0,s2
    80005fdc:	00008097          	auipc	ra,0x8
    80005fe0:	04c080e7          	jalr	76(ra) # 8000e028 <_Unwind_Resume>
    80005fe4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005fe8:	000b0513          	mv	a0,s6
    80005fec:	ffffc097          	auipc	ra,0xffffc
    80005ff0:	2ec080e7          	jalr	748(ra) # 800022d8 <_ZdlPv>
    80005ff4:	00048513          	mv	a0,s1
    80005ff8:	00008097          	auipc	ra,0x8
    80005ffc:	030080e7          	jalr	48(ra) # 8000e028 <_Unwind_Resume>
    80006000:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80006004:	000c8513          	mv	a0,s9
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	2d0080e7          	jalr	720(ra) # 800022d8 <_ZdlPv>
    80006010:	00048513          	mv	a0,s1
    80006014:	00008097          	auipc	ra,0x8
    80006018:	014080e7          	jalr	20(ra) # 8000e028 <_Unwind_Resume>
    8000601c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80006020:	000c8513          	mv	a0,s9
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	2b4080e7          	jalr	692(ra) # 800022d8 <_ZdlPv>
    8000602c:	00048513          	mv	a0,s1
    80006030:	00008097          	auipc	ra,0x8
    80006034:	ff8080e7          	jalr	-8(ra) # 8000e028 <_Unwind_Resume>

0000000080006038 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80006038:	ff010113          	addi	sp,sp,-16
    8000603c:	00113423          	sd	ra,8(sp)
    80006040:	00813023          	sd	s0,0(sp)
    80006044:	01010413          	addi	s0,sp,16
    80006048:	00007797          	auipc	a5,0x7
    8000604c:	d8078793          	addi	a5,a5,-640 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    80006050:	00f53023          	sd	a5,0(a0)
    80006054:	ffffc097          	auipc	ra,0xffffc
    80006058:	5e4080e7          	jalr	1508(ra) # 80002638 <_ZN6ThreadD1Ev>
    8000605c:	00813083          	ld	ra,8(sp)
    80006060:	00013403          	ld	s0,0(sp)
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret

000000008000606c <_ZN12ConsumerSyncD0Ev>:
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00113c23          	sd	ra,24(sp)
    80006074:	00813823          	sd	s0,16(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	00050493          	mv	s1,a0
    80006084:	00007797          	auipc	a5,0x7
    80006088:	d4478793          	addi	a5,a5,-700 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    8000608c:	00f53023          	sd	a5,0(a0)
    80006090:	ffffc097          	auipc	ra,0xffffc
    80006094:	5a8080e7          	jalr	1448(ra) # 80002638 <_ZN6ThreadD1Ev>
    80006098:	00048513          	mv	a0,s1
    8000609c:	ffffc097          	auipc	ra,0xffffc
    800060a0:	23c080e7          	jalr	572(ra) # 800022d8 <_ZdlPv>
    800060a4:	01813083          	ld	ra,24(sp)
    800060a8:	01013403          	ld	s0,16(sp)
    800060ac:	00813483          	ld	s1,8(sp)
    800060b0:	02010113          	addi	sp,sp,32
    800060b4:	00008067          	ret

00000000800060b8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800060b8:	ff010113          	addi	sp,sp,-16
    800060bc:	00113423          	sd	ra,8(sp)
    800060c0:	00813023          	sd	s0,0(sp)
    800060c4:	01010413          	addi	s0,sp,16
    800060c8:	00007797          	auipc	a5,0x7
    800060cc:	cd878793          	addi	a5,a5,-808 # 8000cda0 <_ZTV12ProducerSync+0x10>
    800060d0:	00f53023          	sd	a5,0(a0)
    800060d4:	ffffc097          	auipc	ra,0xffffc
    800060d8:	564080e7          	jalr	1380(ra) # 80002638 <_ZN6ThreadD1Ev>
    800060dc:	00813083          	ld	ra,8(sp)
    800060e0:	00013403          	ld	s0,0(sp)
    800060e4:	01010113          	addi	sp,sp,16
    800060e8:	00008067          	ret

00000000800060ec <_ZN12ProducerSyncD0Ev>:
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	00050493          	mv	s1,a0
    80006104:	00007797          	auipc	a5,0x7
    80006108:	c9c78793          	addi	a5,a5,-868 # 8000cda0 <_ZTV12ProducerSync+0x10>
    8000610c:	00f53023          	sd	a5,0(a0)
    80006110:	ffffc097          	auipc	ra,0xffffc
    80006114:	528080e7          	jalr	1320(ra) # 80002638 <_ZN6ThreadD1Ev>
    80006118:	00048513          	mv	a0,s1
    8000611c:	ffffc097          	auipc	ra,0xffffc
    80006120:	1bc080e7          	jalr	444(ra) # 800022d8 <_ZdlPv>
    80006124:	01813083          	ld	ra,24(sp)
    80006128:	01013403          	ld	s0,16(sp)
    8000612c:	00813483          	ld	s1,8(sp)
    80006130:	02010113          	addi	sp,sp,32
    80006134:	00008067          	ret

0000000080006138 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006138:	ff010113          	addi	sp,sp,-16
    8000613c:	00113423          	sd	ra,8(sp)
    80006140:	00813023          	sd	s0,0(sp)
    80006144:	01010413          	addi	s0,sp,16
    80006148:	00007797          	auipc	a5,0x7
    8000614c:	c3078793          	addi	a5,a5,-976 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    80006150:	00f53023          	sd	a5,0(a0)
    80006154:	ffffc097          	auipc	ra,0xffffc
    80006158:	4e4080e7          	jalr	1252(ra) # 80002638 <_ZN6ThreadD1Ev>
    8000615c:	00813083          	ld	ra,8(sp)
    80006160:	00013403          	ld	s0,0(sp)
    80006164:	01010113          	addi	sp,sp,16
    80006168:	00008067          	ret

000000008000616c <_ZN16ProducerKeyboardD0Ev>:
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	02010413          	addi	s0,sp,32
    80006180:	00050493          	mv	s1,a0
    80006184:	00007797          	auipc	a5,0x7
    80006188:	bf478793          	addi	a5,a5,-1036 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    8000618c:	00f53023          	sd	a5,0(a0)
    80006190:	ffffc097          	auipc	ra,0xffffc
    80006194:	4a8080e7          	jalr	1192(ra) # 80002638 <_ZN6ThreadD1Ev>
    80006198:	00048513          	mv	a0,s1
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	13c080e7          	jalr	316(ra) # 800022d8 <_ZdlPv>
    800061a4:	01813083          	ld	ra,24(sp)
    800061a8:	01013403          	ld	s0,16(sp)
    800061ac:	00813483          	ld	s1,8(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret

00000000800061b8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800061b8:	ff010113          	addi	sp,sp,-16
    800061bc:	00113423          	sd	ra,8(sp)
    800061c0:	00813023          	sd	s0,0(sp)
    800061c4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800061c8:	02053583          	ld	a1,32(a0)
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	7e4080e7          	jalr	2020(ra) # 800059b0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800061d4:	00813083          	ld	ra,8(sp)
    800061d8:	00013403          	ld	s0,0(sp)
    800061dc:	01010113          	addi	sp,sp,16
    800061e0:	00008067          	ret

00000000800061e4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800061e4:	ff010113          	addi	sp,sp,-16
    800061e8:	00113423          	sd	ra,8(sp)
    800061ec:	00813023          	sd	s0,0(sp)
    800061f0:	01010413          	addi	s0,sp,16
        producer(td);
    800061f4:	02053583          	ld	a1,32(a0)
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	878080e7          	jalr	-1928(ra) # 80005a70 <_ZN12ProducerSync8producerEPv>
    }
    80006200:	00813083          	ld	ra,8(sp)
    80006204:	00013403          	ld	s0,0(sp)
    80006208:	01010113          	addi	sp,sp,16
    8000620c:	00008067          	ret

0000000080006210 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006210:	ff010113          	addi	sp,sp,-16
    80006214:	00113423          	sd	ra,8(sp)
    80006218:	00813023          	sd	s0,0(sp)
    8000621c:	01010413          	addi	s0,sp,16
        consumer(td);
    80006220:	02053583          	ld	a1,32(a0)
    80006224:	00000097          	auipc	ra,0x0
    80006228:	8e0080e7          	jalr	-1824(ra) # 80005b04 <_ZN12ConsumerSync8consumerEPv>
    }
    8000622c:	00813083          	ld	ra,8(sp)
    80006230:	00013403          	ld	s0,0(sp)
    80006234:	01010113          	addi	sp,sp,16
    80006238:	00008067          	ret

000000008000623c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000623c:	fe010113          	addi	sp,sp,-32
    80006240:	00113c23          	sd	ra,24(sp)
    80006244:	00813823          	sd	s0,16(sp)
    80006248:	00913423          	sd	s1,8(sp)
    8000624c:	02010413          	addi	s0,sp,32
    80006250:	00050493          	mv	s1,a0
    LOCK();
    80006254:	00100613          	li	a2,1
    80006258:	00000593          	li	a1,0
    8000625c:	00007517          	auipc	a0,0x7
    80006260:	cf450513          	addi	a0,a0,-780 # 8000cf50 <lockPrint>
    80006264:	ffffb097          	auipc	ra,0xffffb
    80006268:	fd0080e7          	jalr	-48(ra) # 80001234 <copy_and_swap>
    8000626c:	00050863          	beqz	a0,8000627c <_Z11printStringPKc+0x40>
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	6dc080e7          	jalr	1756(ra) # 8000194c <_Z15thread_dispatchv>
    80006278:	fddff06f          	j	80006254 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000627c:	0004c503          	lbu	a0,0(s1)
    80006280:	00050a63          	beqz	a0,80006294 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	7c4080e7          	jalr	1988(ra) # 80001a48 <_Z4putcc>
        string++;
    8000628c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006290:	fedff06f          	j	8000627c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006294:	00000613          	li	a2,0
    80006298:	00100593          	li	a1,1
    8000629c:	00007517          	auipc	a0,0x7
    800062a0:	cb450513          	addi	a0,a0,-844 # 8000cf50 <lockPrint>
    800062a4:	ffffb097          	auipc	ra,0xffffb
    800062a8:	f90080e7          	jalr	-112(ra) # 80001234 <copy_and_swap>
    800062ac:	fe0514e3          	bnez	a0,80006294 <_Z11printStringPKc+0x58>
}
    800062b0:	01813083          	ld	ra,24(sp)
    800062b4:	01013403          	ld	s0,16(sp)
    800062b8:	00813483          	ld	s1,8(sp)
    800062bc:	02010113          	addi	sp,sp,32
    800062c0:	00008067          	ret

00000000800062c4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800062c4:	fd010113          	addi	sp,sp,-48
    800062c8:	02113423          	sd	ra,40(sp)
    800062cc:	02813023          	sd	s0,32(sp)
    800062d0:	00913c23          	sd	s1,24(sp)
    800062d4:	01213823          	sd	s2,16(sp)
    800062d8:	01313423          	sd	s3,8(sp)
    800062dc:	01413023          	sd	s4,0(sp)
    800062e0:	03010413          	addi	s0,sp,48
    800062e4:	00050993          	mv	s3,a0
    800062e8:	00058a13          	mv	s4,a1
    LOCK();
    800062ec:	00100613          	li	a2,1
    800062f0:	00000593          	li	a1,0
    800062f4:	00007517          	auipc	a0,0x7
    800062f8:	c5c50513          	addi	a0,a0,-932 # 8000cf50 <lockPrint>
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	f38080e7          	jalr	-200(ra) # 80001234 <copy_and_swap>
    80006304:	00050863          	beqz	a0,80006314 <_Z9getStringPci+0x50>
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	644080e7          	jalr	1604(ra) # 8000194c <_Z15thread_dispatchv>
    80006310:	fddff06f          	j	800062ec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006314:	00000913          	li	s2,0
    80006318:	00090493          	mv	s1,s2
    8000631c:	0019091b          	addiw	s2,s2,1
    80006320:	03495a63          	bge	s2,s4,80006354 <_Z9getStringPci+0x90>
        cc = getc();
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	6e4080e7          	jalr	1764(ra) # 80001a08 <_Z4getcv>
        if(cc < 1)
    8000632c:	02050463          	beqz	a0,80006354 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006330:	009984b3          	add	s1,s3,s1
    80006334:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006338:	00a00793          	li	a5,10
    8000633c:	00f50a63          	beq	a0,a5,80006350 <_Z9getStringPci+0x8c>
    80006340:	00d00793          	li	a5,13
    80006344:	fcf51ae3          	bne	a0,a5,80006318 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006348:	00090493          	mv	s1,s2
    8000634c:	0080006f          	j	80006354 <_Z9getStringPci+0x90>
    80006350:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006354:	009984b3          	add	s1,s3,s1
    80006358:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000635c:	00000613          	li	a2,0
    80006360:	00100593          	li	a1,1
    80006364:	00007517          	auipc	a0,0x7
    80006368:	bec50513          	addi	a0,a0,-1044 # 8000cf50 <lockPrint>
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	ec8080e7          	jalr	-312(ra) # 80001234 <copy_and_swap>
    80006374:	fe0514e3          	bnez	a0,8000635c <_Z9getStringPci+0x98>
    return buf;
}
    80006378:	00098513          	mv	a0,s3
    8000637c:	02813083          	ld	ra,40(sp)
    80006380:	02013403          	ld	s0,32(sp)
    80006384:	01813483          	ld	s1,24(sp)
    80006388:	01013903          	ld	s2,16(sp)
    8000638c:	00813983          	ld	s3,8(sp)
    80006390:	00013a03          	ld	s4,0(sp)
    80006394:	03010113          	addi	sp,sp,48
    80006398:	00008067          	ret

000000008000639c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000639c:	ff010113          	addi	sp,sp,-16
    800063a0:	00813423          	sd	s0,8(sp)
    800063a4:	01010413          	addi	s0,sp,16
    800063a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800063ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800063b0:	0006c603          	lbu	a2,0(a3)
    800063b4:	fd06071b          	addiw	a4,a2,-48
    800063b8:	0ff77713          	andi	a4,a4,255
    800063bc:	00900793          	li	a5,9
    800063c0:	02e7e063          	bltu	a5,a4,800063e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800063c4:	0025179b          	slliw	a5,a0,0x2
    800063c8:	00a787bb          	addw	a5,a5,a0
    800063cc:	0017979b          	slliw	a5,a5,0x1
    800063d0:	00168693          	addi	a3,a3,1
    800063d4:	00c787bb          	addw	a5,a5,a2
    800063d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800063dc:	fd5ff06f          	j	800063b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800063e0:	00813403          	ld	s0,8(sp)
    800063e4:	01010113          	addi	sp,sp,16
    800063e8:	00008067          	ret

00000000800063ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800063ec:	fc010113          	addi	sp,sp,-64
    800063f0:	02113c23          	sd	ra,56(sp)
    800063f4:	02813823          	sd	s0,48(sp)
    800063f8:	02913423          	sd	s1,40(sp)
    800063fc:	03213023          	sd	s2,32(sp)
    80006400:	01313c23          	sd	s3,24(sp)
    80006404:	04010413          	addi	s0,sp,64
    80006408:	00050493          	mv	s1,a0
    8000640c:	00058913          	mv	s2,a1
    80006410:	00060993          	mv	s3,a2
    LOCK();
    80006414:	00100613          	li	a2,1
    80006418:	00000593          	li	a1,0
    8000641c:	00007517          	auipc	a0,0x7
    80006420:	b3450513          	addi	a0,a0,-1228 # 8000cf50 <lockPrint>
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	e10080e7          	jalr	-496(ra) # 80001234 <copy_and_swap>
    8000642c:	00050863          	beqz	a0,8000643c <_Z8printIntiii+0x50>
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	51c080e7          	jalr	1308(ra) # 8000194c <_Z15thread_dispatchv>
    80006438:	fddff06f          	j	80006414 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000643c:	00098463          	beqz	s3,80006444 <_Z8printIntiii+0x58>
    80006440:	0804c463          	bltz	s1,800064c8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006444:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006448:	00000593          	li	a1,0
    }

    i = 0;
    8000644c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006450:	0009079b          	sext.w	a5,s2
    80006454:	0325773b          	remuw	a4,a0,s2
    80006458:	00048613          	mv	a2,s1
    8000645c:	0014849b          	addiw	s1,s1,1
    80006460:	02071693          	slli	a3,a4,0x20
    80006464:	0206d693          	srli	a3,a3,0x20
    80006468:	00007717          	auipc	a4,0x7
    8000646c:	97870713          	addi	a4,a4,-1672 # 8000cde0 <digits>
    80006470:	00d70733          	add	a4,a4,a3
    80006474:	00074683          	lbu	a3,0(a4)
    80006478:	fd040713          	addi	a4,s0,-48
    8000647c:	00c70733          	add	a4,a4,a2
    80006480:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006484:	0005071b          	sext.w	a4,a0
    80006488:	0325553b          	divuw	a0,a0,s2
    8000648c:	fcf772e3          	bgeu	a4,a5,80006450 <_Z8printIntiii+0x64>
    if(neg)
    80006490:	00058c63          	beqz	a1,800064a8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006494:	fd040793          	addi	a5,s0,-48
    80006498:	009784b3          	add	s1,a5,s1
    8000649c:	02d00793          	li	a5,45
    800064a0:	fef48823          	sb	a5,-16(s1)
    800064a4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800064a8:	fff4849b          	addiw	s1,s1,-1
    800064ac:	0204c463          	bltz	s1,800064d4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800064b0:	fd040793          	addi	a5,s0,-48
    800064b4:	009787b3          	add	a5,a5,s1
    800064b8:	ff07c503          	lbu	a0,-16(a5)
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	58c080e7          	jalr	1420(ra) # 80001a48 <_Z4putcc>
    800064c4:	fe5ff06f          	j	800064a8 <_Z8printIntiii+0xbc>
        x = -xx;
    800064c8:	4090053b          	negw	a0,s1
        neg = 1;
    800064cc:	00100593          	li	a1,1
        x = -xx;
    800064d0:	f7dff06f          	j	8000644c <_Z8printIntiii+0x60>

    UNLOCK();
    800064d4:	00000613          	li	a2,0
    800064d8:	00100593          	li	a1,1
    800064dc:	00007517          	auipc	a0,0x7
    800064e0:	a7450513          	addi	a0,a0,-1420 # 8000cf50 <lockPrint>
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	d50080e7          	jalr	-688(ra) # 80001234 <copy_and_swap>
    800064ec:	fe0514e3          	bnez	a0,800064d4 <_Z8printIntiii+0xe8>
    800064f0:	03813083          	ld	ra,56(sp)
    800064f4:	03013403          	ld	s0,48(sp)
    800064f8:	02813483          	ld	s1,40(sp)
    800064fc:	02013903          	ld	s2,32(sp)
    80006500:	01813983          	ld	s3,24(sp)
    80006504:	04010113          	addi	sp,sp,64
    80006508:	00008067          	ret

000000008000650c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000650c:	fd010113          	addi	sp,sp,-48
    80006510:	02113423          	sd	ra,40(sp)
    80006514:	02813023          	sd	s0,32(sp)
    80006518:	00913c23          	sd	s1,24(sp)
    8000651c:	01213823          	sd	s2,16(sp)
    80006520:	01313423          	sd	s3,8(sp)
    80006524:	03010413          	addi	s0,sp,48
    80006528:	00050493          	mv	s1,a0
    8000652c:	00058913          	mv	s2,a1
    80006530:	0015879b          	addiw	a5,a1,1
    80006534:	0007851b          	sext.w	a0,a5
    80006538:	00f4a023          	sw	a5,0(s1)
    8000653c:	0004a823          	sw	zero,16(s1)
    80006540:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006544:	00251513          	slli	a0,a0,0x2
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	210080e7          	jalr	528(ra) # 80001758 <_Z9mem_allocm>
    80006550:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006554:	01000513          	li	a0,16
    80006558:	ffffc097          	auipc	ra,0xffffc
    8000655c:	d30080e7          	jalr	-720(ra) # 80002288 <_Znwm>
    80006560:	00050993          	mv	s3,a0
    80006564:	00000593          	li	a1,0
    80006568:	ffffc097          	auipc	ra,0xffffc
    8000656c:	f40080e7          	jalr	-192(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    80006570:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006574:	01000513          	li	a0,16
    80006578:	ffffc097          	auipc	ra,0xffffc
    8000657c:	d10080e7          	jalr	-752(ra) # 80002288 <_Znwm>
    80006580:	00050993          	mv	s3,a0
    80006584:	00090593          	mv	a1,s2
    80006588:	ffffc097          	auipc	ra,0xffffc
    8000658c:	f20080e7          	jalr	-224(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    80006590:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006594:	01000513          	li	a0,16
    80006598:	ffffc097          	auipc	ra,0xffffc
    8000659c:	cf0080e7          	jalr	-784(ra) # 80002288 <_Znwm>
    800065a0:	00050913          	mv	s2,a0
    800065a4:	00100593          	li	a1,1
    800065a8:	ffffc097          	auipc	ra,0xffffc
    800065ac:	f00080e7          	jalr	-256(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    800065b0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800065b4:	01000513          	li	a0,16
    800065b8:	ffffc097          	auipc	ra,0xffffc
    800065bc:	cd0080e7          	jalr	-816(ra) # 80002288 <_Znwm>
    800065c0:	00050913          	mv	s2,a0
    800065c4:	00100593          	li	a1,1
    800065c8:	ffffc097          	auipc	ra,0xffffc
    800065cc:	ee0080e7          	jalr	-288(ra) # 800024a8 <_ZN9SemaphoreC1Ej>
    800065d0:	0324b823          	sd	s2,48(s1)
}
    800065d4:	02813083          	ld	ra,40(sp)
    800065d8:	02013403          	ld	s0,32(sp)
    800065dc:	01813483          	ld	s1,24(sp)
    800065e0:	01013903          	ld	s2,16(sp)
    800065e4:	00813983          	ld	s3,8(sp)
    800065e8:	03010113          	addi	sp,sp,48
    800065ec:	00008067          	ret
    800065f0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800065f4:	00098513          	mv	a0,s3
    800065f8:	ffffc097          	auipc	ra,0xffffc
    800065fc:	ce0080e7          	jalr	-800(ra) # 800022d8 <_ZdlPv>
    80006600:	00048513          	mv	a0,s1
    80006604:	00008097          	auipc	ra,0x8
    80006608:	a24080e7          	jalr	-1500(ra) # 8000e028 <_Unwind_Resume>
    8000660c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006610:	00098513          	mv	a0,s3
    80006614:	ffffc097          	auipc	ra,0xffffc
    80006618:	cc4080e7          	jalr	-828(ra) # 800022d8 <_ZdlPv>
    8000661c:	00048513          	mv	a0,s1
    80006620:	00008097          	auipc	ra,0x8
    80006624:	a08080e7          	jalr	-1528(ra) # 8000e028 <_Unwind_Resume>
    80006628:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000662c:	00090513          	mv	a0,s2
    80006630:	ffffc097          	auipc	ra,0xffffc
    80006634:	ca8080e7          	jalr	-856(ra) # 800022d8 <_ZdlPv>
    80006638:	00048513          	mv	a0,s1
    8000663c:	00008097          	auipc	ra,0x8
    80006640:	9ec080e7          	jalr	-1556(ra) # 8000e028 <_Unwind_Resume>
    80006644:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006648:	00090513          	mv	a0,s2
    8000664c:	ffffc097          	auipc	ra,0xffffc
    80006650:	c8c080e7          	jalr	-884(ra) # 800022d8 <_ZdlPv>
    80006654:	00048513          	mv	a0,s1
    80006658:	00008097          	auipc	ra,0x8
    8000665c:	9d0080e7          	jalr	-1584(ra) # 8000e028 <_Unwind_Resume>

0000000080006660 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006660:	fe010113          	addi	sp,sp,-32
    80006664:	00113c23          	sd	ra,24(sp)
    80006668:	00813823          	sd	s0,16(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	01213023          	sd	s2,0(sp)
    80006674:	02010413          	addi	s0,sp,32
    80006678:	00050493          	mv	s1,a0
    8000667c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006680:	01853503          	ld	a0,24(a0)
    80006684:	ffffc097          	auipc	ra,0xffffc
    80006688:	ed0080e7          	jalr	-304(ra) # 80002554 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000668c:	0304b503          	ld	a0,48(s1)
    80006690:	ffffc097          	auipc	ra,0xffffc
    80006694:	ec4080e7          	jalr	-316(ra) # 80002554 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006698:	0084b783          	ld	a5,8(s1)
    8000669c:	0144a703          	lw	a4,20(s1)
    800066a0:	00271713          	slli	a4,a4,0x2
    800066a4:	00e787b3          	add	a5,a5,a4
    800066a8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066ac:	0144a783          	lw	a5,20(s1)
    800066b0:	0017879b          	addiw	a5,a5,1
    800066b4:	0004a703          	lw	a4,0(s1)
    800066b8:	02e7e7bb          	remw	a5,a5,a4
    800066bc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800066c0:	0304b503          	ld	a0,48(s1)
    800066c4:	ffffc097          	auipc	ra,0xffffc
    800066c8:	f10080e7          	jalr	-240(ra) # 800025d4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800066cc:	0204b503          	ld	a0,32(s1)
    800066d0:	ffffc097          	auipc	ra,0xffffc
    800066d4:	f04080e7          	jalr	-252(ra) # 800025d4 <_ZN9Semaphore6signalEv>

}
    800066d8:	01813083          	ld	ra,24(sp)
    800066dc:	01013403          	ld	s0,16(sp)
    800066e0:	00813483          	ld	s1,8(sp)
    800066e4:	00013903          	ld	s2,0(sp)
    800066e8:	02010113          	addi	sp,sp,32
    800066ec:	00008067          	ret

00000000800066f0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00113c23          	sd	ra,24(sp)
    800066f8:	00813823          	sd	s0,16(sp)
    800066fc:	00913423          	sd	s1,8(sp)
    80006700:	01213023          	sd	s2,0(sp)
    80006704:	02010413          	addi	s0,sp,32
    80006708:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000670c:	02053503          	ld	a0,32(a0)
    80006710:	ffffc097          	auipc	ra,0xffffc
    80006714:	e44080e7          	jalr	-444(ra) # 80002554 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006718:	0284b503          	ld	a0,40(s1)
    8000671c:	ffffc097          	auipc	ra,0xffffc
    80006720:	e38080e7          	jalr	-456(ra) # 80002554 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006724:	0084b703          	ld	a4,8(s1)
    80006728:	0104a783          	lw	a5,16(s1)
    8000672c:	00279693          	slli	a3,a5,0x2
    80006730:	00d70733          	add	a4,a4,a3
    80006734:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006738:	0017879b          	addiw	a5,a5,1
    8000673c:	0004a703          	lw	a4,0(s1)
    80006740:	02e7e7bb          	remw	a5,a5,a4
    80006744:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006748:	0284b503          	ld	a0,40(s1)
    8000674c:	ffffc097          	auipc	ra,0xffffc
    80006750:	e88080e7          	jalr	-376(ra) # 800025d4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006754:	0184b503          	ld	a0,24(s1)
    80006758:	ffffc097          	auipc	ra,0xffffc
    8000675c:	e7c080e7          	jalr	-388(ra) # 800025d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006760:	00090513          	mv	a0,s2
    80006764:	01813083          	ld	ra,24(sp)
    80006768:	01013403          	ld	s0,16(sp)
    8000676c:	00813483          	ld	s1,8(sp)
    80006770:	00013903          	ld	s2,0(sp)
    80006774:	02010113          	addi	sp,sp,32
    80006778:	00008067          	ret

000000008000677c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	01213023          	sd	s2,0(sp)
    80006790:	02010413          	addi	s0,sp,32
    80006794:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006798:	02853503          	ld	a0,40(a0)
    8000679c:	ffffc097          	auipc	ra,0xffffc
    800067a0:	db8080e7          	jalr	-584(ra) # 80002554 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800067a4:	0304b503          	ld	a0,48(s1)
    800067a8:	ffffc097          	auipc	ra,0xffffc
    800067ac:	dac080e7          	jalr	-596(ra) # 80002554 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800067b0:	0144a783          	lw	a5,20(s1)
    800067b4:	0104a903          	lw	s2,16(s1)
    800067b8:	0327ce63          	blt	a5,s2,800067f4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800067bc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800067c0:	0304b503          	ld	a0,48(s1)
    800067c4:	ffffc097          	auipc	ra,0xffffc
    800067c8:	e10080e7          	jalr	-496(ra) # 800025d4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800067cc:	0284b503          	ld	a0,40(s1)
    800067d0:	ffffc097          	auipc	ra,0xffffc
    800067d4:	e04080e7          	jalr	-508(ra) # 800025d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800067d8:	00090513          	mv	a0,s2
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	00013903          	ld	s2,0(sp)
    800067ec:	02010113          	addi	sp,sp,32
    800067f0:	00008067          	ret
        ret = cap - head + tail;
    800067f4:	0004a703          	lw	a4,0(s1)
    800067f8:	4127093b          	subw	s2,a4,s2
    800067fc:	00f9093b          	addw	s2,s2,a5
    80006800:	fc1ff06f          	j	800067c0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006804 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006804:	fe010113          	addi	sp,sp,-32
    80006808:	00113c23          	sd	ra,24(sp)
    8000680c:	00813823          	sd	s0,16(sp)
    80006810:	00913423          	sd	s1,8(sp)
    80006814:	02010413          	addi	s0,sp,32
    80006818:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000681c:	00a00513          	li	a0,10
    80006820:	ffffc097          	auipc	ra,0xffffc
    80006824:	c60080e7          	jalr	-928(ra) # 80002480 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006828:	00004517          	auipc	a0,0x4
    8000682c:	e3050513          	addi	a0,a0,-464 # 8000a658 <_ZZ13SprintIntegermE6digits+0x1f0>
    80006830:	00000097          	auipc	ra,0x0
    80006834:	a0c080e7          	jalr	-1524(ra) # 8000623c <_Z11printStringPKc>
    while (getCnt()) {
    80006838:	00048513          	mv	a0,s1
    8000683c:	00000097          	auipc	ra,0x0
    80006840:	f40080e7          	jalr	-192(ra) # 8000677c <_ZN9BufferCPP6getCntEv>
    80006844:	02050c63          	beqz	a0,8000687c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006848:	0084b783          	ld	a5,8(s1)
    8000684c:	0104a703          	lw	a4,16(s1)
    80006850:	00271713          	slli	a4,a4,0x2
    80006854:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006858:	0007c503          	lbu	a0,0(a5)
    8000685c:	ffffc097          	auipc	ra,0xffffc
    80006860:	c24080e7          	jalr	-988(ra) # 80002480 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006864:	0104a783          	lw	a5,16(s1)
    80006868:	0017879b          	addiw	a5,a5,1
    8000686c:	0004a703          	lw	a4,0(s1)
    80006870:	02e7e7bb          	remw	a5,a5,a4
    80006874:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006878:	fc1ff06f          	j	80006838 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000687c:	02100513          	li	a0,33
    80006880:	ffffc097          	auipc	ra,0xffffc
    80006884:	c00080e7          	jalr	-1024(ra) # 80002480 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006888:	00a00513          	li	a0,10
    8000688c:	ffffc097          	auipc	ra,0xffffc
    80006890:	bf4080e7          	jalr	-1036(ra) # 80002480 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006894:	0084b503          	ld	a0,8(s1)
    80006898:	ffffb097          	auipc	ra,0xffffb
    8000689c:	f24080e7          	jalr	-220(ra) # 800017bc <_Z8mem_freePv>
    delete itemAvailable;
    800068a0:	0204b503          	ld	a0,32(s1)
    800068a4:	00050863          	beqz	a0,800068b4 <_ZN9BufferCPPD1Ev+0xb0>
    800068a8:	00053783          	ld	a5,0(a0)
    800068ac:	0087b783          	ld	a5,8(a5)
    800068b0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800068b4:	0184b503          	ld	a0,24(s1)
    800068b8:	00050863          	beqz	a0,800068c8 <_ZN9BufferCPPD1Ev+0xc4>
    800068bc:	00053783          	ld	a5,0(a0)
    800068c0:	0087b783          	ld	a5,8(a5)
    800068c4:	000780e7          	jalr	a5
    delete mutexTail;
    800068c8:	0304b503          	ld	a0,48(s1)
    800068cc:	00050863          	beqz	a0,800068dc <_ZN9BufferCPPD1Ev+0xd8>
    800068d0:	00053783          	ld	a5,0(a0)
    800068d4:	0087b783          	ld	a5,8(a5)
    800068d8:	000780e7          	jalr	a5
    delete mutexHead;
    800068dc:	0284b503          	ld	a0,40(s1)
    800068e0:	00050863          	beqz	a0,800068f0 <_ZN9BufferCPPD1Ev+0xec>
    800068e4:	00053783          	ld	a5,0(a0)
    800068e8:	0087b783          	ld	a5,8(a5)
    800068ec:	000780e7          	jalr	a5
}
    800068f0:	01813083          	ld	ra,24(sp)
    800068f4:	01013403          	ld	s0,16(sp)
    800068f8:	00813483          	ld	s1,8(sp)
    800068fc:	02010113          	addi	sp,sp,32
    80006900:	00008067          	ret

0000000080006904 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006904:	fe010113          	addi	sp,sp,-32
    80006908:	00113c23          	sd	ra,24(sp)
    8000690c:	00813823          	sd	s0,16(sp)
    80006910:	00913423          	sd	s1,8(sp)
    80006914:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006918:	00004517          	auipc	a0,0x4
    8000691c:	d5850513          	addi	a0,a0,-680 # 8000a670 <_ZZ13SprintIntegermE6digits+0x208>
    80006920:	00000097          	auipc	ra,0x0
    80006924:	91c080e7          	jalr	-1764(ra) # 8000623c <_Z11printStringPKc>
    int test = getc() - '0';
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	0e0080e7          	jalr	224(ra) # 80001a08 <_Z4getcv>
    80006930:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	0d4080e7          	jalr	212(ra) # 80001a08 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000693c:	00700793          	li	a5,7
    80006940:	1097e263          	bltu	a5,s1,80006a44 <_Z8userMainv+0x140>
    80006944:	00249493          	slli	s1,s1,0x2
    80006948:	00004717          	auipc	a4,0x4
    8000694c:	f8070713          	addi	a4,a4,-128 # 8000a8c8 <_ZZ13SprintIntegermE6digits+0x460>
    80006950:	00e484b3          	add	s1,s1,a4
    80006954:	0004a783          	lw	a5,0(s1)
    80006958:	00e787b3          	add	a5,a5,a4
    8000695c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006960:	fffff097          	auipc	ra,0xfffff
    80006964:	f54080e7          	jalr	-172(ra) # 800058b4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006968:	00004517          	auipc	a0,0x4
    8000696c:	d2850513          	addi	a0,a0,-728 # 8000a690 <_ZZ13SprintIntegermE6digits+0x228>
    80006970:	00000097          	auipc	ra,0x0
    80006974:	8cc080e7          	jalr	-1844(ra) # 8000623c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006978:	01813083          	ld	ra,24(sp)
    8000697c:	01013403          	ld	s0,16(sp)
    80006980:	00813483          	ld	s1,8(sp)
    80006984:	02010113          	addi	sp,sp,32
    80006988:	00008067          	ret
            Threads_CPP_API_test();
    8000698c:	ffffe097          	auipc	ra,0xffffe
    80006990:	e08080e7          	jalr	-504(ra) # 80004794 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006994:	00004517          	auipc	a0,0x4
    80006998:	d3c50513          	addi	a0,a0,-708 # 8000a6d0 <_ZZ13SprintIntegermE6digits+0x268>
    8000699c:	00000097          	auipc	ra,0x0
    800069a0:	8a0080e7          	jalr	-1888(ra) # 8000623c <_Z11printStringPKc>
            break;
    800069a4:	fd5ff06f          	j	80006978 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800069a8:	ffffd097          	auipc	ra,0xffffd
    800069ac:	640080e7          	jalr	1600(ra) # 80003fe8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800069b0:	00004517          	auipc	a0,0x4
    800069b4:	d6050513          	addi	a0,a0,-672 # 8000a710 <_ZZ13SprintIntegermE6digits+0x2a8>
    800069b8:	00000097          	auipc	ra,0x0
    800069bc:	884080e7          	jalr	-1916(ra) # 8000623c <_Z11printStringPKc>
            break;
    800069c0:	fb9ff06f          	j	80006978 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800069c4:	fffff097          	auipc	ra,0xfffff
    800069c8:	234080e7          	jalr	564(ra) # 80005bf8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800069cc:	00004517          	auipc	a0,0x4
    800069d0:	d9450513          	addi	a0,a0,-620 # 8000a760 <_ZZ13SprintIntegermE6digits+0x2f8>
    800069d4:	00000097          	auipc	ra,0x0
    800069d8:	868080e7          	jalr	-1944(ra) # 8000623c <_Z11printStringPKc>
            break;
    800069dc:	f9dff06f          	j	80006978 <_Z8userMainv+0x74>
            testSleeping();
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	11c080e7          	jalr	284(ra) # 80006afc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800069e8:	00004517          	auipc	a0,0x4
    800069ec:	dd050513          	addi	a0,a0,-560 # 8000a7b8 <_ZZ13SprintIntegermE6digits+0x350>
    800069f0:	00000097          	auipc	ra,0x0
    800069f4:	84c080e7          	jalr	-1972(ra) # 8000623c <_Z11printStringPKc>
            break;
    800069f8:	f81ff06f          	j	80006978 <_Z8userMainv+0x74>
            testConsumerProducer();
    800069fc:	ffffe097          	auipc	ra,0xffffe
    80006a00:	258080e7          	jalr	600(ra) # 80004c54 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006a04:	00004517          	auipc	a0,0x4
    80006a08:	de450513          	addi	a0,a0,-540 # 8000a7e8 <_ZZ13SprintIntegermE6digits+0x380>
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	830080e7          	jalr	-2000(ra) # 8000623c <_Z11printStringPKc>
            break;
    80006a14:	f65ff06f          	j	80006978 <_Z8userMainv+0x74>
            System_Mode_test();
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	658080e7          	jalr	1624(ra) # 80007070 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006a20:	00004517          	auipc	a0,0x4
    80006a24:	e0850513          	addi	a0,a0,-504 # 8000a828 <_ZZ13SprintIntegermE6digits+0x3c0>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	814080e7          	jalr	-2028(ra) # 8000623c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006a30:	00004517          	auipc	a0,0x4
    80006a34:	e1850513          	addi	a0,a0,-488 # 8000a848 <_ZZ13SprintIntegermE6digits+0x3e0>
    80006a38:	00000097          	auipc	ra,0x0
    80006a3c:	804080e7          	jalr	-2044(ra) # 8000623c <_Z11printStringPKc>
            break;
    80006a40:	f39ff06f          	j	80006978 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006a44:	00004517          	auipc	a0,0x4
    80006a48:	e5c50513          	addi	a0,a0,-420 # 8000a8a0 <_ZZ13SprintIntegermE6digits+0x438>
    80006a4c:	fffff097          	auipc	ra,0xfffff
    80006a50:	7f0080e7          	jalr	2032(ra) # 8000623c <_Z11printStringPKc>
    80006a54:	f25ff06f          	j	80006978 <_Z8userMainv+0x74>

0000000080006a58 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006a58:	fe010113          	addi	sp,sp,-32
    80006a5c:	00113c23          	sd	ra,24(sp)
    80006a60:	00813823          	sd	s0,16(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	01213023          	sd	s2,0(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006a70:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006a74:	00600493          	li	s1,6
    while (--i > 0) {
    80006a78:	fff4849b          	addiw	s1,s1,-1
    80006a7c:	04905463          	blez	s1,80006ac4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006a80:	00004517          	auipc	a0,0x4
    80006a84:	e6850513          	addi	a0,a0,-408 # 8000a8e8 <_ZZ13SprintIntegermE6digits+0x480>
    80006a88:	fffff097          	auipc	ra,0xfffff
    80006a8c:	7b4080e7          	jalr	1972(ra) # 8000623c <_Z11printStringPKc>
        printInt(sleep_time);
    80006a90:	00000613          	li	a2,0
    80006a94:	00a00593          	li	a1,10
    80006a98:	0009051b          	sext.w	a0,s2
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	950080e7          	jalr	-1712(ra) # 800063ec <_Z8printIntiii>
        printString(" !\n");
    80006aa4:	00004517          	auipc	a0,0x4
    80006aa8:	e4c50513          	addi	a0,a0,-436 # 8000a8f0 <_ZZ13SprintIntegermE6digits+0x488>
    80006aac:	fffff097          	auipc	ra,0xfffff
    80006ab0:	790080e7          	jalr	1936(ra) # 8000623c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006ab4:	00090513          	mv	a0,s2
    80006ab8:	ffffb097          	auipc	ra,0xffffb
    80006abc:	f10080e7          	jalr	-240(ra) # 800019c8 <_Z10time_sleepm>
    while (--i > 0) {
    80006ac0:	fb9ff06f          	j	80006a78 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006ac4:	00a00793          	li	a5,10
    80006ac8:	02f95933          	divu	s2,s2,a5
    80006acc:	fff90913          	addi	s2,s2,-1
    80006ad0:	00006797          	auipc	a5,0x6
    80006ad4:	48878793          	addi	a5,a5,1160 # 8000cf58 <_ZL8finished>
    80006ad8:	01278933          	add	s2,a5,s2
    80006adc:	00100793          	li	a5,1
    80006ae0:	00f90023          	sb	a5,0(s2)
}
    80006ae4:	01813083          	ld	ra,24(sp)
    80006ae8:	01013403          	ld	s0,16(sp)
    80006aec:	00813483          	ld	s1,8(sp)
    80006af0:	00013903          	ld	s2,0(sp)
    80006af4:	02010113          	addi	sp,sp,32
    80006af8:	00008067          	ret

0000000080006afc <_Z12testSleepingv>:

void testSleeping() {
    80006afc:	fc010113          	addi	sp,sp,-64
    80006b00:	02113c23          	sd	ra,56(sp)
    80006b04:	02813823          	sd	s0,48(sp)
    80006b08:	02913423          	sd	s1,40(sp)
    80006b0c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006b10:	00a00793          	li	a5,10
    80006b14:	fcf43823          	sd	a5,-48(s0)
    80006b18:	01400793          	li	a5,20
    80006b1c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006b20:	00000493          	li	s1,0
    80006b24:	02c0006f          	j	80006b50 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006b28:	00349793          	slli	a5,s1,0x3
    80006b2c:	fd040613          	addi	a2,s0,-48
    80006b30:	00f60633          	add	a2,a2,a5
    80006b34:	00000597          	auipc	a1,0x0
    80006b38:	f2458593          	addi	a1,a1,-220 # 80006a58 <_ZL9sleepyRunPv>
    80006b3c:	fc040513          	addi	a0,s0,-64
    80006b40:	00f50533          	add	a0,a0,a5
    80006b44:	ffffb097          	auipc	ra,0xffffb
    80006b48:	d4c080e7          	jalr	-692(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006b4c:	0014849b          	addiw	s1,s1,1
    80006b50:	00100793          	li	a5,1
    80006b54:	fc97dae3          	bge	a5,s1,80006b28 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006b58:	00006797          	auipc	a5,0x6
    80006b5c:	4007c783          	lbu	a5,1024(a5) # 8000cf58 <_ZL8finished>
    80006b60:	fe078ce3          	beqz	a5,80006b58 <_Z12testSleepingv+0x5c>
    80006b64:	00006797          	auipc	a5,0x6
    80006b68:	3f57c783          	lbu	a5,1013(a5) # 8000cf59 <_ZL8finished+0x1>
    80006b6c:	fe0786e3          	beqz	a5,80006b58 <_Z12testSleepingv+0x5c>
}
    80006b70:	03813083          	ld	ra,56(sp)
    80006b74:	03013403          	ld	s0,48(sp)
    80006b78:	02813483          	ld	s1,40(sp)
    80006b7c:	04010113          	addi	sp,sp,64
    80006b80:	00008067          	ret

0000000080006b84 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006b84:	fe010113          	addi	sp,sp,-32
    80006b88:	00113c23          	sd	ra,24(sp)
    80006b8c:	00813823          	sd	s0,16(sp)
    80006b90:	00913423          	sd	s1,8(sp)
    80006b94:	01213023          	sd	s2,0(sp)
    80006b98:	02010413          	addi	s0,sp,32
    80006b9c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006ba0:	00100793          	li	a5,1
    80006ba4:	02a7f863          	bgeu	a5,a0,80006bd4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006ba8:	00a00793          	li	a5,10
    80006bac:	02f577b3          	remu	a5,a0,a5
    80006bb0:	02078e63          	beqz	a5,80006bec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006bb4:	fff48513          	addi	a0,s1,-1
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	fcc080e7          	jalr	-52(ra) # 80006b84 <_ZL9fibonaccim>
    80006bc0:	00050913          	mv	s2,a0
    80006bc4:	ffe48513          	addi	a0,s1,-2
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	fbc080e7          	jalr	-68(ra) # 80006b84 <_ZL9fibonaccim>
    80006bd0:	00a90533          	add	a0,s2,a0
}
    80006bd4:	01813083          	ld	ra,24(sp)
    80006bd8:	01013403          	ld	s0,16(sp)
    80006bdc:	00813483          	ld	s1,8(sp)
    80006be0:	00013903          	ld	s2,0(sp)
    80006be4:	02010113          	addi	sp,sp,32
    80006be8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	d60080e7          	jalr	-672(ra) # 8000194c <_Z15thread_dispatchv>
    80006bf4:	fc1ff06f          	j	80006bb4 <_ZL9fibonaccim+0x30>

0000000080006bf8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006bf8:	fe010113          	addi	sp,sp,-32
    80006bfc:	00113c23          	sd	ra,24(sp)
    80006c00:	00813823          	sd	s0,16(sp)
    80006c04:	00913423          	sd	s1,8(sp)
    80006c08:	01213023          	sd	s2,0(sp)
    80006c0c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006c10:	00a00493          	li	s1,10
    80006c14:	0400006f          	j	80006c54 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006c18:	00004517          	auipc	a0,0x4
    80006c1c:	9a850513          	addi	a0,a0,-1624 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    80006c20:	fffff097          	auipc	ra,0xfffff
    80006c24:	61c080e7          	jalr	1564(ra) # 8000623c <_Z11printStringPKc>
    80006c28:	00000613          	li	a2,0
    80006c2c:	00a00593          	li	a1,10
    80006c30:	00048513          	mv	a0,s1
    80006c34:	fffff097          	auipc	ra,0xfffff
    80006c38:	7b8080e7          	jalr	1976(ra) # 800063ec <_Z8printIntiii>
    80006c3c:	00004517          	auipc	a0,0x4
    80006c40:	b7450513          	addi	a0,a0,-1164 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006c44:	fffff097          	auipc	ra,0xfffff
    80006c48:	5f8080e7          	jalr	1528(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006c4c:	0014849b          	addiw	s1,s1,1
    80006c50:	0ff4f493          	andi	s1,s1,255
    80006c54:	00c00793          	li	a5,12
    80006c58:	fc97f0e3          	bgeu	a5,s1,80006c18 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006c5c:	00004517          	auipc	a0,0x4
    80006c60:	96c50513          	addi	a0,a0,-1684 # 8000a5c8 <_ZZ13SprintIntegermE6digits+0x160>
    80006c64:	fffff097          	auipc	ra,0xfffff
    80006c68:	5d8080e7          	jalr	1496(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006c6c:	00500313          	li	t1,5
    thread_dispatch();
    80006c70:	ffffb097          	auipc	ra,0xffffb
    80006c74:	cdc080e7          	jalr	-804(ra) # 8000194c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006c78:	01000513          	li	a0,16
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	f08080e7          	jalr	-248(ra) # 80006b84 <_ZL9fibonaccim>
    80006c84:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006c88:	00004517          	auipc	a0,0x4
    80006c8c:	95050513          	addi	a0,a0,-1712 # 8000a5d8 <_ZZ13SprintIntegermE6digits+0x170>
    80006c90:	fffff097          	auipc	ra,0xfffff
    80006c94:	5ac080e7          	jalr	1452(ra) # 8000623c <_Z11printStringPKc>
    80006c98:	00000613          	li	a2,0
    80006c9c:	00a00593          	li	a1,10
    80006ca0:	0009051b          	sext.w	a0,s2
    80006ca4:	fffff097          	auipc	ra,0xfffff
    80006ca8:	748080e7          	jalr	1864(ra) # 800063ec <_Z8printIntiii>
    80006cac:	00004517          	auipc	a0,0x4
    80006cb0:	b0450513          	addi	a0,a0,-1276 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006cb4:	fffff097          	auipc	ra,0xfffff
    80006cb8:	588080e7          	jalr	1416(ra) # 8000623c <_Z11printStringPKc>
    80006cbc:	0400006f          	j	80006cfc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006cc0:	00004517          	auipc	a0,0x4
    80006cc4:	90050513          	addi	a0,a0,-1792 # 8000a5c0 <_ZZ13SprintIntegermE6digits+0x158>
    80006cc8:	fffff097          	auipc	ra,0xfffff
    80006ccc:	574080e7          	jalr	1396(ra) # 8000623c <_Z11printStringPKc>
    80006cd0:	00000613          	li	a2,0
    80006cd4:	00a00593          	li	a1,10
    80006cd8:	00048513          	mv	a0,s1
    80006cdc:	fffff097          	auipc	ra,0xfffff
    80006ce0:	710080e7          	jalr	1808(ra) # 800063ec <_Z8printIntiii>
    80006ce4:	00004517          	auipc	a0,0x4
    80006ce8:	acc50513          	addi	a0,a0,-1332 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006cec:	fffff097          	auipc	ra,0xfffff
    80006cf0:	550080e7          	jalr	1360(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006cf4:	0014849b          	addiw	s1,s1,1
    80006cf8:	0ff4f493          	andi	s1,s1,255
    80006cfc:	00f00793          	li	a5,15
    80006d00:	fc97f0e3          	bgeu	a5,s1,80006cc0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006d04:	00004517          	auipc	a0,0x4
    80006d08:	8e450513          	addi	a0,a0,-1820 # 8000a5e8 <_ZZ13SprintIntegermE6digits+0x180>
    80006d0c:	fffff097          	auipc	ra,0xfffff
    80006d10:	530080e7          	jalr	1328(ra) # 8000623c <_Z11printStringPKc>
    finishedD = true;
    80006d14:	00100793          	li	a5,1
    80006d18:	00006717          	auipc	a4,0x6
    80006d1c:	24f70123          	sb	a5,578(a4) # 8000cf5a <_ZL9finishedD>
    thread_dispatch();
    80006d20:	ffffb097          	auipc	ra,0xffffb
    80006d24:	c2c080e7          	jalr	-980(ra) # 8000194c <_Z15thread_dispatchv>
}
    80006d28:	01813083          	ld	ra,24(sp)
    80006d2c:	01013403          	ld	s0,16(sp)
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	00013903          	ld	s2,0(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret

0000000080006d40 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006d40:	fe010113          	addi	sp,sp,-32
    80006d44:	00113c23          	sd	ra,24(sp)
    80006d48:	00813823          	sd	s0,16(sp)
    80006d4c:	00913423          	sd	s1,8(sp)
    80006d50:	01213023          	sd	s2,0(sp)
    80006d54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006d58:	00000493          	li	s1,0
    80006d5c:	0400006f          	j	80006d9c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006d60:	00004517          	auipc	a0,0x4
    80006d64:	83050513          	addi	a0,a0,-2000 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	4d4080e7          	jalr	1236(ra) # 8000623c <_Z11printStringPKc>
    80006d70:	00000613          	li	a2,0
    80006d74:	00a00593          	li	a1,10
    80006d78:	00048513          	mv	a0,s1
    80006d7c:	fffff097          	auipc	ra,0xfffff
    80006d80:	670080e7          	jalr	1648(ra) # 800063ec <_Z8printIntiii>
    80006d84:	00004517          	auipc	a0,0x4
    80006d88:	a2c50513          	addi	a0,a0,-1492 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006d8c:	fffff097          	auipc	ra,0xfffff
    80006d90:	4b0080e7          	jalr	1200(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006d94:	0014849b          	addiw	s1,s1,1
    80006d98:	0ff4f493          	andi	s1,s1,255
    80006d9c:	00200793          	li	a5,2
    80006da0:	fc97f0e3          	bgeu	a5,s1,80006d60 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006da4:	00003517          	auipc	a0,0x3
    80006da8:	7f450513          	addi	a0,a0,2036 # 8000a598 <_ZZ13SprintIntegermE6digits+0x130>
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	490080e7          	jalr	1168(ra) # 8000623c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006db4:	00700313          	li	t1,7
    thread_dispatch();
    80006db8:	ffffb097          	auipc	ra,0xffffb
    80006dbc:	b94080e7          	jalr	-1132(ra) # 8000194c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006dc0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006dc4:	00003517          	auipc	a0,0x3
    80006dc8:	7e450513          	addi	a0,a0,2020 # 8000a5a8 <_ZZ13SprintIntegermE6digits+0x140>
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	470080e7          	jalr	1136(ra) # 8000623c <_Z11printStringPKc>
    80006dd4:	00000613          	li	a2,0
    80006dd8:	00a00593          	li	a1,10
    80006ddc:	0009051b          	sext.w	a0,s2
    80006de0:	fffff097          	auipc	ra,0xfffff
    80006de4:	60c080e7          	jalr	1548(ra) # 800063ec <_Z8printIntiii>
    80006de8:	00004517          	auipc	a0,0x4
    80006dec:	9c850513          	addi	a0,a0,-1592 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006df0:	fffff097          	auipc	ra,0xfffff
    80006df4:	44c080e7          	jalr	1100(ra) # 8000623c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006df8:	00c00513          	li	a0,12
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	d88080e7          	jalr	-632(ra) # 80006b84 <_ZL9fibonaccim>
    80006e04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006e08:	00003517          	auipc	a0,0x3
    80006e0c:	7a850513          	addi	a0,a0,1960 # 8000a5b0 <_ZZ13SprintIntegermE6digits+0x148>
    80006e10:	fffff097          	auipc	ra,0xfffff
    80006e14:	42c080e7          	jalr	1068(ra) # 8000623c <_Z11printStringPKc>
    80006e18:	00000613          	li	a2,0
    80006e1c:	00a00593          	li	a1,10
    80006e20:	0009051b          	sext.w	a0,s2
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	5c8080e7          	jalr	1480(ra) # 800063ec <_Z8printIntiii>
    80006e2c:	00004517          	auipc	a0,0x4
    80006e30:	98450513          	addi	a0,a0,-1660 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006e34:	fffff097          	auipc	ra,0xfffff
    80006e38:	408080e7          	jalr	1032(ra) # 8000623c <_Z11printStringPKc>
    80006e3c:	0400006f          	j	80006e7c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006e40:	00003517          	auipc	a0,0x3
    80006e44:	75050513          	addi	a0,a0,1872 # 8000a590 <_ZZ13SprintIntegermE6digits+0x128>
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	3f4080e7          	jalr	1012(ra) # 8000623c <_Z11printStringPKc>
    80006e50:	00000613          	li	a2,0
    80006e54:	00a00593          	li	a1,10
    80006e58:	00048513          	mv	a0,s1
    80006e5c:	fffff097          	auipc	ra,0xfffff
    80006e60:	590080e7          	jalr	1424(ra) # 800063ec <_Z8printIntiii>
    80006e64:	00004517          	auipc	a0,0x4
    80006e68:	94c50513          	addi	a0,a0,-1716 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006e6c:	fffff097          	auipc	ra,0xfffff
    80006e70:	3d0080e7          	jalr	976(ra) # 8000623c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006e74:	0014849b          	addiw	s1,s1,1
    80006e78:	0ff4f493          	andi	s1,s1,255
    80006e7c:	00500793          	li	a5,5
    80006e80:	fc97f0e3          	bgeu	a5,s1,80006e40 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006e84:	00003517          	auipc	a0,0x3
    80006e88:	6e450513          	addi	a0,a0,1764 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	3b0080e7          	jalr	944(ra) # 8000623c <_Z11printStringPKc>
    finishedC = true;
    80006e94:	00100793          	li	a5,1
    80006e98:	00006717          	auipc	a4,0x6
    80006e9c:	0cf701a3          	sb	a5,195(a4) # 8000cf5b <_ZL9finishedC>
    thread_dispatch();
    80006ea0:	ffffb097          	auipc	ra,0xffffb
    80006ea4:	aac080e7          	jalr	-1364(ra) # 8000194c <_Z15thread_dispatchv>
}
    80006ea8:	01813083          	ld	ra,24(sp)
    80006eac:	01013403          	ld	s0,16(sp)
    80006eb0:	00813483          	ld	s1,8(sp)
    80006eb4:	00013903          	ld	s2,0(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret

0000000080006ec0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006ec0:	fe010113          	addi	sp,sp,-32
    80006ec4:	00113c23          	sd	ra,24(sp)
    80006ec8:	00813823          	sd	s0,16(sp)
    80006ecc:	00913423          	sd	s1,8(sp)
    80006ed0:	01213023          	sd	s2,0(sp)
    80006ed4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006ed8:	00000913          	li	s2,0
    80006edc:	0400006f          	j	80006f1c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ee0:	ffffb097          	auipc	ra,0xffffb
    80006ee4:	a6c080e7          	jalr	-1428(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ee8:	00148493          	addi	s1,s1,1
    80006eec:	000027b7          	lui	a5,0x2
    80006ef0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ef4:	0097ee63          	bltu	a5,s1,80006f10 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ef8:	00000713          	li	a4,0
    80006efc:	000077b7          	lui	a5,0x7
    80006f00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006f04:	fce7eee3          	bltu	a5,a4,80006ee0 <_ZL11workerBodyBPv+0x20>
    80006f08:	00170713          	addi	a4,a4,1
    80006f0c:	ff1ff06f          	j	80006efc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006f10:	00a00793          	li	a5,10
    80006f14:	04f90663          	beq	s2,a5,80006f60 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006f18:	00190913          	addi	s2,s2,1
    80006f1c:	00f00793          	li	a5,15
    80006f20:	0527e463          	bltu	a5,s2,80006f68 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006f24:	00003517          	auipc	a0,0x3
    80006f28:	65450513          	addi	a0,a0,1620 # 8000a578 <_ZZ13SprintIntegermE6digits+0x110>
    80006f2c:	fffff097          	auipc	ra,0xfffff
    80006f30:	310080e7          	jalr	784(ra) # 8000623c <_Z11printStringPKc>
    80006f34:	00000613          	li	a2,0
    80006f38:	00a00593          	li	a1,10
    80006f3c:	0009051b          	sext.w	a0,s2
    80006f40:	fffff097          	auipc	ra,0xfffff
    80006f44:	4ac080e7          	jalr	1196(ra) # 800063ec <_Z8printIntiii>
    80006f48:	00004517          	auipc	a0,0x4
    80006f4c:	86850513          	addi	a0,a0,-1944 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80006f50:	fffff097          	auipc	ra,0xfffff
    80006f54:	2ec080e7          	jalr	748(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006f58:	00000493          	li	s1,0
    80006f5c:	f91ff06f          	j	80006eec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006f60:	14102ff3          	csrr	t6,sepc
    80006f64:	fb5ff06f          	j	80006f18 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006f68:	00003517          	auipc	a0,0x3
    80006f6c:	61850513          	addi	a0,a0,1560 # 8000a580 <_ZZ13SprintIntegermE6digits+0x118>
    80006f70:	fffff097          	auipc	ra,0xfffff
    80006f74:	2cc080e7          	jalr	716(ra) # 8000623c <_Z11printStringPKc>
    finishedB = true;
    80006f78:	00100793          	li	a5,1
    80006f7c:	00006717          	auipc	a4,0x6
    80006f80:	fef70023          	sb	a5,-32(a4) # 8000cf5c <_ZL9finishedB>
    thread_dispatch();
    80006f84:	ffffb097          	auipc	ra,0xffffb
    80006f88:	9c8080e7          	jalr	-1592(ra) # 8000194c <_Z15thread_dispatchv>
}
    80006f8c:	01813083          	ld	ra,24(sp)
    80006f90:	01013403          	ld	s0,16(sp)
    80006f94:	00813483          	ld	s1,8(sp)
    80006f98:	00013903          	ld	s2,0(sp)
    80006f9c:	02010113          	addi	sp,sp,32
    80006fa0:	00008067          	ret

0000000080006fa4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006fa4:	fe010113          	addi	sp,sp,-32
    80006fa8:	00113c23          	sd	ra,24(sp)
    80006fac:	00813823          	sd	s0,16(sp)
    80006fb0:	00913423          	sd	s1,8(sp)
    80006fb4:	01213023          	sd	s2,0(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006fbc:	00000913          	li	s2,0
    80006fc0:	0380006f          	j	80006ff8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006fc4:	ffffb097          	auipc	ra,0xffffb
    80006fc8:	988080e7          	jalr	-1656(ra) # 8000194c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006fcc:	00148493          	addi	s1,s1,1
    80006fd0:	000027b7          	lui	a5,0x2
    80006fd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006fd8:	0097ee63          	bltu	a5,s1,80006ff4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006fdc:	00000713          	li	a4,0
    80006fe0:	000077b7          	lui	a5,0x7
    80006fe4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006fe8:	fce7eee3          	bltu	a5,a4,80006fc4 <_ZL11workerBodyAPv+0x20>
    80006fec:	00170713          	addi	a4,a4,1
    80006ff0:	ff1ff06f          	j	80006fe0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ff4:	00190913          	addi	s2,s2,1
    80006ff8:	00900793          	li	a5,9
    80006ffc:	0527e063          	bltu	a5,s2,8000703c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80007000:	00003517          	auipc	a0,0x3
    80007004:	56050513          	addi	a0,a0,1376 # 8000a560 <_ZZ13SprintIntegermE6digits+0xf8>
    80007008:	fffff097          	auipc	ra,0xfffff
    8000700c:	234080e7          	jalr	564(ra) # 8000623c <_Z11printStringPKc>
    80007010:	00000613          	li	a2,0
    80007014:	00a00593          	li	a1,10
    80007018:	0009051b          	sext.w	a0,s2
    8000701c:	fffff097          	auipc	ra,0xfffff
    80007020:	3d0080e7          	jalr	976(ra) # 800063ec <_Z8printIntiii>
    80007024:	00003517          	auipc	a0,0x3
    80007028:	78c50513          	addi	a0,a0,1932 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    8000702c:	fffff097          	auipc	ra,0xfffff
    80007030:	210080e7          	jalr	528(ra) # 8000623c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007034:	00000493          	li	s1,0
    80007038:	f99ff06f          	j	80006fd0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000703c:	00003517          	auipc	a0,0x3
    80007040:	52c50513          	addi	a0,a0,1324 # 8000a568 <_ZZ13SprintIntegermE6digits+0x100>
    80007044:	fffff097          	auipc	ra,0xfffff
    80007048:	1f8080e7          	jalr	504(ra) # 8000623c <_Z11printStringPKc>
    finishedA = true;
    8000704c:	00100793          	li	a5,1
    80007050:	00006717          	auipc	a4,0x6
    80007054:	f0f706a3          	sb	a5,-243(a4) # 8000cf5d <_ZL9finishedA>
}
    80007058:	01813083          	ld	ra,24(sp)
    8000705c:	01013403          	ld	s0,16(sp)
    80007060:	00813483          	ld	s1,8(sp)
    80007064:	00013903          	ld	s2,0(sp)
    80007068:	02010113          	addi	sp,sp,32
    8000706c:	00008067          	ret

0000000080007070 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80007070:	fd010113          	addi	sp,sp,-48
    80007074:	02113423          	sd	ra,40(sp)
    80007078:	02813023          	sd	s0,32(sp)
    8000707c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80007080:	00000613          	li	a2,0
    80007084:	00000597          	auipc	a1,0x0
    80007088:	f2058593          	addi	a1,a1,-224 # 80006fa4 <_ZL11workerBodyAPv>
    8000708c:	fd040513          	addi	a0,s0,-48
    80007090:	ffffb097          	auipc	ra,0xffffb
    80007094:	800080e7          	jalr	-2048(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80007098:	00003517          	auipc	a0,0x3
    8000709c:	56050513          	addi	a0,a0,1376 # 8000a5f8 <_ZZ13SprintIntegermE6digits+0x190>
    800070a0:	fffff097          	auipc	ra,0xfffff
    800070a4:	19c080e7          	jalr	412(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800070a8:	00000613          	li	a2,0
    800070ac:	00000597          	auipc	a1,0x0
    800070b0:	e1458593          	addi	a1,a1,-492 # 80006ec0 <_ZL11workerBodyBPv>
    800070b4:	fd840513          	addi	a0,s0,-40
    800070b8:	ffffa097          	auipc	ra,0xffffa
    800070bc:	7d8080e7          	jalr	2008(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800070c0:	00003517          	auipc	a0,0x3
    800070c4:	55050513          	addi	a0,a0,1360 # 8000a610 <_ZZ13SprintIntegermE6digits+0x1a8>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	174080e7          	jalr	372(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800070d0:	00000613          	li	a2,0
    800070d4:	00000597          	auipc	a1,0x0
    800070d8:	c6c58593          	addi	a1,a1,-916 # 80006d40 <_ZL11workerBodyCPv>
    800070dc:	fe040513          	addi	a0,s0,-32
    800070e0:	ffffa097          	auipc	ra,0xffffa
    800070e4:	7b0080e7          	jalr	1968(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800070e8:	00003517          	auipc	a0,0x3
    800070ec:	54050513          	addi	a0,a0,1344 # 8000a628 <_ZZ13SprintIntegermE6digits+0x1c0>
    800070f0:	fffff097          	auipc	ra,0xfffff
    800070f4:	14c080e7          	jalr	332(ra) # 8000623c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800070f8:	00000613          	li	a2,0
    800070fc:	00000597          	auipc	a1,0x0
    80007100:	afc58593          	addi	a1,a1,-1284 # 80006bf8 <_ZL11workerBodyDPv>
    80007104:	fe840513          	addi	a0,s0,-24
    80007108:	ffffa097          	auipc	ra,0xffffa
    8000710c:	788080e7          	jalr	1928(ra) # 80001890 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80007110:	00003517          	auipc	a0,0x3
    80007114:	53050513          	addi	a0,a0,1328 # 8000a640 <_ZZ13SprintIntegermE6digits+0x1d8>
    80007118:	fffff097          	auipc	ra,0xfffff
    8000711c:	124080e7          	jalr	292(ra) # 8000623c <_Z11printStringPKc>
    80007120:	00c0006f          	j	8000712c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007124:	ffffb097          	auipc	ra,0xffffb
    80007128:	828080e7          	jalr	-2008(ra) # 8000194c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000712c:	00006797          	auipc	a5,0x6
    80007130:	e317c783          	lbu	a5,-463(a5) # 8000cf5d <_ZL9finishedA>
    80007134:	fe0788e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007138:	00006797          	auipc	a5,0x6
    8000713c:	e247c783          	lbu	a5,-476(a5) # 8000cf5c <_ZL9finishedB>
    80007140:	fe0782e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007144:	00006797          	auipc	a5,0x6
    80007148:	e177c783          	lbu	a5,-489(a5) # 8000cf5b <_ZL9finishedC>
    8000714c:	fc078ce3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007150:	00006797          	auipc	a5,0x6
    80007154:	e0a7c783          	lbu	a5,-502(a5) # 8000cf5a <_ZL9finishedD>
    80007158:	fc0786e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    }

}
    8000715c:	02813083          	ld	ra,40(sp)
    80007160:	02013403          	ld	s0,32(sp)
    80007164:	03010113          	addi	sp,sp,48
    80007168:	00008067          	ret

000000008000716c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00113c23          	sd	ra,24(sp)
    80007174:	00813823          	sd	s0,16(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	01213023          	sd	s2,0(sp)
    80007180:	02010413          	addi	s0,sp,32
    80007184:	00050493          	mv	s1,a0
    80007188:	00058913          	mv	s2,a1
    8000718c:	0015879b          	addiw	a5,a1,1
    80007190:	0007851b          	sext.w	a0,a5
    80007194:	00f4a023          	sw	a5,0(s1)
    80007198:	0004a823          	sw	zero,16(s1)
    8000719c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800071a0:	00251513          	slli	a0,a0,0x2
    800071a4:	ffffa097          	auipc	ra,0xffffa
    800071a8:	5b4080e7          	jalr	1460(ra) # 80001758 <_Z9mem_allocm>
    800071ac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800071b0:	00000593          	li	a1,0
    800071b4:	02048513          	addi	a0,s1,32
    800071b8:	ffffb097          	auipc	ra,0xffffb
    800071bc:	8cc080e7          	jalr	-1844(ra) # 80001a84 <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    800071c0:	00090593          	mv	a1,s2
    800071c4:	01848513          	addi	a0,s1,24
    800071c8:	ffffb097          	auipc	ra,0xffffb
    800071cc:	8bc080e7          	jalr	-1860(ra) # 80001a84 <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    800071d0:	00100593          	li	a1,1
    800071d4:	02848513          	addi	a0,s1,40
    800071d8:	ffffb097          	auipc	ra,0xffffb
    800071dc:	8ac080e7          	jalr	-1876(ra) # 80001a84 <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    800071e0:	00100593          	li	a1,1
    800071e4:	03048513          	addi	a0,s1,48
    800071e8:	ffffb097          	auipc	ra,0xffffb
    800071ec:	89c080e7          	jalr	-1892(ra) # 80001a84 <_Z8sem_openPP3semj>
}
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00813483          	ld	s1,8(sp)
    800071fc:	00013903          	ld	s2,0(sp)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00008067          	ret

0000000080007208 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007208:	fe010113          	addi	sp,sp,-32
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	01213023          	sd	s2,0(sp)
    8000721c:	02010413          	addi	s0,sp,32
    80007220:	00050493          	mv	s1,a0
    80007224:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80007228:	01853503          	ld	a0,24(a0)
    8000722c:	ffffb097          	auipc	ra,0xffffb
    80007230:	8dc080e7          	jalr	-1828(ra) # 80001b08 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    80007234:	0304b503          	ld	a0,48(s1)
    80007238:	ffffb097          	auipc	ra,0xffffb
    8000723c:	8d0080e7          	jalr	-1840(ra) # 80001b08 <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80007240:	0084b783          	ld	a5,8(s1)
    80007244:	0144a703          	lw	a4,20(s1)
    80007248:	00271713          	slli	a4,a4,0x2
    8000724c:	00e787b3          	add	a5,a5,a4
    80007250:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007254:	0144a783          	lw	a5,20(s1)
    80007258:	0017879b          	addiw	a5,a5,1
    8000725c:	0004a703          	lw	a4,0(s1)
    80007260:	02e7e7bb          	remw	a5,a5,a4
    80007264:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007268:	0304b503          	ld	a0,48(s1)
    8000726c:	ffffb097          	auipc	ra,0xffffb
    80007270:	8dc080e7          	jalr	-1828(ra) # 80001b48 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80007274:	0204b503          	ld	a0,32(s1)
    80007278:	ffffb097          	auipc	ra,0xffffb
    8000727c:	8d0080e7          	jalr	-1840(ra) # 80001b48 <_Z10sem_signalP3sem>

}
    80007280:	01813083          	ld	ra,24(sp)
    80007284:	01013403          	ld	s0,16(sp)
    80007288:	00813483          	ld	s1,8(sp)
    8000728c:	00013903          	ld	s2,0(sp)
    80007290:	02010113          	addi	sp,sp,32
    80007294:	00008067          	ret

0000000080007298 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007298:	fe010113          	addi	sp,sp,-32
    8000729c:	00113c23          	sd	ra,24(sp)
    800072a0:	00813823          	sd	s0,16(sp)
    800072a4:	00913423          	sd	s1,8(sp)
    800072a8:	01213023          	sd	s2,0(sp)
    800072ac:	02010413          	addi	s0,sp,32
    800072b0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800072b4:	02053503          	ld	a0,32(a0)
    800072b8:	ffffb097          	auipc	ra,0xffffb
    800072bc:	850080e7          	jalr	-1968(ra) # 80001b08 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    800072c0:	0284b503          	ld	a0,40(s1)
    800072c4:	ffffb097          	auipc	ra,0xffffb
    800072c8:	844080e7          	jalr	-1980(ra) # 80001b08 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    800072cc:	0084b703          	ld	a4,8(s1)
    800072d0:	0104a783          	lw	a5,16(s1)
    800072d4:	00279693          	slli	a3,a5,0x2
    800072d8:	00d70733          	add	a4,a4,a3
    800072dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800072e0:	0017879b          	addiw	a5,a5,1
    800072e4:	0004a703          	lw	a4,0(s1)
    800072e8:	02e7e7bb          	remw	a5,a5,a4
    800072ec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800072f0:	0284b503          	ld	a0,40(s1)
    800072f4:	ffffb097          	auipc	ra,0xffffb
    800072f8:	854080e7          	jalr	-1964(ra) # 80001b48 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    800072fc:	0184b503          	ld	a0,24(s1)
    80007300:	ffffb097          	auipc	ra,0xffffb
    80007304:	848080e7          	jalr	-1976(ra) # 80001b48 <_Z10sem_signalP3sem>

    return ret;
}
    80007308:	00090513          	mv	a0,s2
    8000730c:	01813083          	ld	ra,24(sp)
    80007310:	01013403          	ld	s0,16(sp)
    80007314:	00813483          	ld	s1,8(sp)
    80007318:	00013903          	ld	s2,0(sp)
    8000731c:	02010113          	addi	sp,sp,32
    80007320:	00008067          	ret

0000000080007324 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007324:	fe010113          	addi	sp,sp,-32
    80007328:	00113c23          	sd	ra,24(sp)
    8000732c:	00813823          	sd	s0,16(sp)
    80007330:	00913423          	sd	s1,8(sp)
    80007334:	01213023          	sd	s2,0(sp)
    80007338:	02010413          	addi	s0,sp,32
    8000733c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007340:	02853503          	ld	a0,40(a0)
    80007344:	ffffa097          	auipc	ra,0xffffa
    80007348:	7c4080e7          	jalr	1988(ra) # 80001b08 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    8000734c:	0304b503          	ld	a0,48(s1)
    80007350:	ffffa097          	auipc	ra,0xffffa
    80007354:	7b8080e7          	jalr	1976(ra) # 80001b08 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80007358:	0144a783          	lw	a5,20(s1)
    8000735c:	0104a903          	lw	s2,16(s1)
    80007360:	0327ce63          	blt	a5,s2,8000739c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007364:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007368:	0304b503          	ld	a0,48(s1)
    8000736c:	ffffa097          	auipc	ra,0xffffa
    80007370:	7dc080e7          	jalr	2012(ra) # 80001b48 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80007374:	0284b503          	ld	a0,40(s1)
    80007378:	ffffa097          	auipc	ra,0xffffa
    8000737c:	7d0080e7          	jalr	2000(ra) # 80001b48 <_Z10sem_signalP3sem>

    return ret;
}
    80007380:	00090513          	mv	a0,s2
    80007384:	01813083          	ld	ra,24(sp)
    80007388:	01013403          	ld	s0,16(sp)
    8000738c:	00813483          	ld	s1,8(sp)
    80007390:	00013903          	ld	s2,0(sp)
    80007394:	02010113          	addi	sp,sp,32
    80007398:	00008067          	ret
        ret = cap - head + tail;
    8000739c:	0004a703          	lw	a4,0(s1)
    800073a0:	4127093b          	subw	s2,a4,s2
    800073a4:	00f9093b          	addw	s2,s2,a5
    800073a8:	fc1ff06f          	j	80007368 <_ZN6Buffer6getCntEv+0x44>

00000000800073ac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800073ac:	fe010113          	addi	sp,sp,-32
    800073b0:	00113c23          	sd	ra,24(sp)
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00913423          	sd	s1,8(sp)
    800073bc:	02010413          	addi	s0,sp,32
    800073c0:	00050493          	mv	s1,a0
    putc('\n');
    800073c4:	00a00513          	li	a0,10
    800073c8:	ffffa097          	auipc	ra,0xffffa
    800073cc:	680080e7          	jalr	1664(ra) # 80001a48 <_Z4putcc>
    printString("Buffer deleted!\n");
    800073d0:	00003517          	auipc	a0,0x3
    800073d4:	28850513          	addi	a0,a0,648 # 8000a658 <_ZZ13SprintIntegermE6digits+0x1f0>
    800073d8:	fffff097          	auipc	ra,0xfffff
    800073dc:	e64080e7          	jalr	-412(ra) # 8000623c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800073e0:	00048513          	mv	a0,s1
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	f40080e7          	jalr	-192(ra) # 80007324 <_ZN6Buffer6getCntEv>
    800073ec:	02a05c63          	blez	a0,80007424 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800073f0:	0084b783          	ld	a5,8(s1)
    800073f4:	0104a703          	lw	a4,16(s1)
    800073f8:	00271713          	slli	a4,a4,0x2
    800073fc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007400:	0007c503          	lbu	a0,0(a5)
    80007404:	ffffa097          	auipc	ra,0xffffa
    80007408:	644080e7          	jalr	1604(ra) # 80001a48 <_Z4putcc>
        head = (head + 1) % cap;
    8000740c:	0104a783          	lw	a5,16(s1)
    80007410:	0017879b          	addiw	a5,a5,1
    80007414:	0004a703          	lw	a4,0(s1)
    80007418:	02e7e7bb          	remw	a5,a5,a4
    8000741c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007420:	fc1ff06f          	j	800073e0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007424:	02100513          	li	a0,33
    80007428:	ffffa097          	auipc	ra,0xffffa
    8000742c:	620080e7          	jalr	1568(ra) # 80001a48 <_Z4putcc>
    putc('\n');
    80007430:	00a00513          	li	a0,10
    80007434:	ffffa097          	auipc	ra,0xffffa
    80007438:	614080e7          	jalr	1556(ra) # 80001a48 <_Z4putcc>
    mem_free(buffer);
    8000743c:	0084b503          	ld	a0,8(s1)
    80007440:	ffffa097          	auipc	ra,0xffffa
    80007444:	37c080e7          	jalr	892(ra) # 800017bc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007448:	0204b503          	ld	a0,32(s1)
    8000744c:	ffffa097          	auipc	ra,0xffffa
    80007450:	67c080e7          	jalr	1660(ra) # 80001ac8 <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80007454:	0184b503          	ld	a0,24(s1)
    80007458:	ffffa097          	auipc	ra,0xffffa
    8000745c:	670080e7          	jalr	1648(ra) # 80001ac8 <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80007460:	0304b503          	ld	a0,48(s1)
    80007464:	ffffa097          	auipc	ra,0xffffa
    80007468:	664080e7          	jalr	1636(ra) # 80001ac8 <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    8000746c:	0284b503          	ld	a0,40(s1)
    80007470:	ffffa097          	auipc	ra,0xffffa
    80007474:	658080e7          	jalr	1624(ra) # 80001ac8 <_Z9sem_closeP3sem>
}
    80007478:	01813083          	ld	ra,24(sp)
    8000747c:	01013403          	ld	s0,16(sp)
    80007480:	00813483          	ld	s1,8(sp)
    80007484:	02010113          	addi	sp,sp,32
    80007488:	00008067          	ret

000000008000748c <start>:
    8000748c:	ff010113          	addi	sp,sp,-16
    80007490:	00813423          	sd	s0,8(sp)
    80007494:	01010413          	addi	s0,sp,16
    80007498:	300027f3          	csrr	a5,mstatus
    8000749c:	ffffe737          	lui	a4,0xffffe
    800074a0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff062f>
    800074a4:	00e7f7b3          	and	a5,a5,a4
    800074a8:	00001737          	lui	a4,0x1
    800074ac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800074b0:	00e7e7b3          	or	a5,a5,a4
    800074b4:	30079073          	csrw	mstatus,a5
    800074b8:	00000797          	auipc	a5,0x0
    800074bc:	16078793          	addi	a5,a5,352 # 80007618 <system_main>
    800074c0:	34179073          	csrw	mepc,a5
    800074c4:	00000793          	li	a5,0
    800074c8:	18079073          	csrw	satp,a5
    800074cc:	000107b7          	lui	a5,0x10
    800074d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800074d4:	30279073          	csrw	medeleg,a5
    800074d8:	30379073          	csrw	mideleg,a5
    800074dc:	104027f3          	csrr	a5,sie
    800074e0:	2227e793          	ori	a5,a5,546
    800074e4:	10479073          	csrw	sie,a5
    800074e8:	fff00793          	li	a5,-1
    800074ec:	00a7d793          	srli	a5,a5,0xa
    800074f0:	3b079073          	csrw	pmpaddr0,a5
    800074f4:	00f00793          	li	a5,15
    800074f8:	3a079073          	csrw	pmpcfg0,a5
    800074fc:	f14027f3          	csrr	a5,mhartid
    80007500:	0200c737          	lui	a4,0x200c
    80007504:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007508:	0007869b          	sext.w	a3,a5
    8000750c:	00269713          	slli	a4,a3,0x2
    80007510:	000f4637          	lui	a2,0xf4
    80007514:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007518:	00d70733          	add	a4,a4,a3
    8000751c:	0037979b          	slliw	a5,a5,0x3
    80007520:	020046b7          	lui	a3,0x2004
    80007524:	00d787b3          	add	a5,a5,a3
    80007528:	00c585b3          	add	a1,a1,a2
    8000752c:	00371693          	slli	a3,a4,0x3
    80007530:	00006717          	auipc	a4,0x6
    80007534:	a3070713          	addi	a4,a4,-1488 # 8000cf60 <timer_scratch>
    80007538:	00b7b023          	sd	a1,0(a5)
    8000753c:	00d70733          	add	a4,a4,a3
    80007540:	00f73c23          	sd	a5,24(a4)
    80007544:	02c73023          	sd	a2,32(a4)
    80007548:	34071073          	csrw	mscratch,a4
    8000754c:	00000797          	auipc	a5,0x0
    80007550:	6e478793          	addi	a5,a5,1764 # 80007c30 <timervec>
    80007554:	30579073          	csrw	mtvec,a5
    80007558:	300027f3          	csrr	a5,mstatus
    8000755c:	0087e793          	ori	a5,a5,8
    80007560:	30079073          	csrw	mstatus,a5
    80007564:	304027f3          	csrr	a5,mie
    80007568:	0807e793          	ori	a5,a5,128
    8000756c:	30479073          	csrw	mie,a5
    80007570:	f14027f3          	csrr	a5,mhartid
    80007574:	0007879b          	sext.w	a5,a5
    80007578:	00078213          	mv	tp,a5
    8000757c:	30200073          	mret
    80007580:	00813403          	ld	s0,8(sp)
    80007584:	01010113          	addi	sp,sp,16
    80007588:	00008067          	ret

000000008000758c <timerinit>:
    8000758c:	ff010113          	addi	sp,sp,-16
    80007590:	00813423          	sd	s0,8(sp)
    80007594:	01010413          	addi	s0,sp,16
    80007598:	f14027f3          	csrr	a5,mhartid
    8000759c:	0200c737          	lui	a4,0x200c
    800075a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800075a4:	0007869b          	sext.w	a3,a5
    800075a8:	00269713          	slli	a4,a3,0x2
    800075ac:	000f4637          	lui	a2,0xf4
    800075b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800075b4:	00d70733          	add	a4,a4,a3
    800075b8:	0037979b          	slliw	a5,a5,0x3
    800075bc:	020046b7          	lui	a3,0x2004
    800075c0:	00d787b3          	add	a5,a5,a3
    800075c4:	00c585b3          	add	a1,a1,a2
    800075c8:	00371693          	slli	a3,a4,0x3
    800075cc:	00006717          	auipc	a4,0x6
    800075d0:	99470713          	addi	a4,a4,-1644 # 8000cf60 <timer_scratch>
    800075d4:	00b7b023          	sd	a1,0(a5)
    800075d8:	00d70733          	add	a4,a4,a3
    800075dc:	00f73c23          	sd	a5,24(a4)
    800075e0:	02c73023          	sd	a2,32(a4)
    800075e4:	34071073          	csrw	mscratch,a4
    800075e8:	00000797          	auipc	a5,0x0
    800075ec:	64878793          	addi	a5,a5,1608 # 80007c30 <timervec>
    800075f0:	30579073          	csrw	mtvec,a5
    800075f4:	300027f3          	csrr	a5,mstatus
    800075f8:	0087e793          	ori	a5,a5,8
    800075fc:	30079073          	csrw	mstatus,a5
    80007600:	304027f3          	csrr	a5,mie
    80007604:	0807e793          	ori	a5,a5,128
    80007608:	30479073          	csrw	mie,a5
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret

0000000080007618 <system_main>:
    80007618:	fe010113          	addi	sp,sp,-32
    8000761c:	00813823          	sd	s0,16(sp)
    80007620:	00913423          	sd	s1,8(sp)
    80007624:	00113c23          	sd	ra,24(sp)
    80007628:	02010413          	addi	s0,sp,32
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	0c4080e7          	jalr	196(ra) # 800076f0 <cpuid>
    80007634:	00006497          	auipc	s1,0x6
    80007638:	83c48493          	addi	s1,s1,-1988 # 8000ce70 <started>
    8000763c:	02050263          	beqz	a0,80007660 <system_main+0x48>
    80007640:	0004a783          	lw	a5,0(s1)
    80007644:	0007879b          	sext.w	a5,a5
    80007648:	fe078ce3          	beqz	a5,80007640 <system_main+0x28>
    8000764c:	0ff0000f          	fence
    80007650:	00003517          	auipc	a0,0x3
    80007654:	2d850513          	addi	a0,a0,728 # 8000a928 <_ZZ13SprintIntegermE6digits+0x4c0>
    80007658:	00001097          	auipc	ra,0x1
    8000765c:	a74080e7          	jalr	-1420(ra) # 800080cc <panic>
    80007660:	00001097          	auipc	ra,0x1
    80007664:	9c8080e7          	jalr	-1592(ra) # 80008028 <consoleinit>
    80007668:	00001097          	auipc	ra,0x1
    8000766c:	154080e7          	jalr	340(ra) # 800087bc <printfinit>
    80007670:	00003517          	auipc	a0,0x3
    80007674:	14050513          	addi	a0,a0,320 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80007678:	00001097          	auipc	ra,0x1
    8000767c:	ab0080e7          	jalr	-1360(ra) # 80008128 <__printf>
    80007680:	00003517          	auipc	a0,0x3
    80007684:	27850513          	addi	a0,a0,632 # 8000a8f8 <_ZZ13SprintIntegermE6digits+0x490>
    80007688:	00001097          	auipc	ra,0x1
    8000768c:	aa0080e7          	jalr	-1376(ra) # 80008128 <__printf>
    80007690:	00003517          	auipc	a0,0x3
    80007694:	12050513          	addi	a0,a0,288 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80007698:	00001097          	auipc	ra,0x1
    8000769c:	a90080e7          	jalr	-1392(ra) # 80008128 <__printf>
    800076a0:	00001097          	auipc	ra,0x1
    800076a4:	4a8080e7          	jalr	1192(ra) # 80008b48 <kinit>
    800076a8:	00000097          	auipc	ra,0x0
    800076ac:	148080e7          	jalr	328(ra) # 800077f0 <trapinit>
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	16c080e7          	jalr	364(ra) # 8000781c <trapinithart>
    800076b8:	00000097          	auipc	ra,0x0
    800076bc:	5b8080e7          	jalr	1464(ra) # 80007c70 <plicinit>
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	5d8080e7          	jalr	1496(ra) # 80007c98 <plicinithart>
    800076c8:	00000097          	auipc	ra,0x0
    800076cc:	078080e7          	jalr	120(ra) # 80007740 <userinit>
    800076d0:	0ff0000f          	fence
    800076d4:	00100793          	li	a5,1
    800076d8:	00003517          	auipc	a0,0x3
    800076dc:	23850513          	addi	a0,a0,568 # 8000a910 <_ZZ13SprintIntegermE6digits+0x4a8>
    800076e0:	00f4a023          	sw	a5,0(s1)
    800076e4:	00001097          	auipc	ra,0x1
    800076e8:	a44080e7          	jalr	-1468(ra) # 80008128 <__printf>
    800076ec:	0000006f          	j	800076ec <system_main+0xd4>

00000000800076f0 <cpuid>:
    800076f0:	ff010113          	addi	sp,sp,-16
    800076f4:	00813423          	sd	s0,8(sp)
    800076f8:	01010413          	addi	s0,sp,16
    800076fc:	00020513          	mv	a0,tp
    80007700:	00813403          	ld	s0,8(sp)
    80007704:	0005051b          	sext.w	a0,a0
    80007708:	01010113          	addi	sp,sp,16
    8000770c:	00008067          	ret

0000000080007710 <mycpu>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813423          	sd	s0,8(sp)
    80007718:	01010413          	addi	s0,sp,16
    8000771c:	00020793          	mv	a5,tp
    80007720:	00813403          	ld	s0,8(sp)
    80007724:	0007879b          	sext.w	a5,a5
    80007728:	00779793          	slli	a5,a5,0x7
    8000772c:	00007517          	auipc	a0,0x7
    80007730:	86450513          	addi	a0,a0,-1948 # 8000df90 <cpus>
    80007734:	00f50533          	add	a0,a0,a5
    80007738:	01010113          	addi	sp,sp,16
    8000773c:	00008067          	ret

0000000080007740 <userinit>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00813403          	ld	s0,8(sp)
    80007750:	01010113          	addi	sp,sp,16
    80007754:	ffffb317          	auipc	t1,0xffffb
    80007758:	8d030067          	jr	-1840(t1) # 80002024 <main>

000000008000775c <either_copyout>:
    8000775c:	ff010113          	addi	sp,sp,-16
    80007760:	00813023          	sd	s0,0(sp)
    80007764:	00113423          	sd	ra,8(sp)
    80007768:	01010413          	addi	s0,sp,16
    8000776c:	02051663          	bnez	a0,80007798 <either_copyout+0x3c>
    80007770:	00058513          	mv	a0,a1
    80007774:	00060593          	mv	a1,a2
    80007778:	0006861b          	sext.w	a2,a3
    8000777c:	00002097          	auipc	ra,0x2
    80007780:	c58080e7          	jalr	-936(ra) # 800093d4 <__memmove>
    80007784:	00813083          	ld	ra,8(sp)
    80007788:	00013403          	ld	s0,0(sp)
    8000778c:	00000513          	li	a0,0
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret
    80007798:	00003517          	auipc	a0,0x3
    8000779c:	1b850513          	addi	a0,a0,440 # 8000a950 <_ZZ13SprintIntegermE6digits+0x4e8>
    800077a0:	00001097          	auipc	ra,0x1
    800077a4:	92c080e7          	jalr	-1748(ra) # 800080cc <panic>

00000000800077a8 <either_copyin>:
    800077a8:	ff010113          	addi	sp,sp,-16
    800077ac:	00813023          	sd	s0,0(sp)
    800077b0:	00113423          	sd	ra,8(sp)
    800077b4:	01010413          	addi	s0,sp,16
    800077b8:	02059463          	bnez	a1,800077e0 <either_copyin+0x38>
    800077bc:	00060593          	mv	a1,a2
    800077c0:	0006861b          	sext.w	a2,a3
    800077c4:	00002097          	auipc	ra,0x2
    800077c8:	c10080e7          	jalr	-1008(ra) # 800093d4 <__memmove>
    800077cc:	00813083          	ld	ra,8(sp)
    800077d0:	00013403          	ld	s0,0(sp)
    800077d4:	00000513          	li	a0,0
    800077d8:	01010113          	addi	sp,sp,16
    800077dc:	00008067          	ret
    800077e0:	00003517          	auipc	a0,0x3
    800077e4:	19850513          	addi	a0,a0,408 # 8000a978 <_ZZ13SprintIntegermE6digits+0x510>
    800077e8:	00001097          	auipc	ra,0x1
    800077ec:	8e4080e7          	jalr	-1820(ra) # 800080cc <panic>

00000000800077f0 <trapinit>:
    800077f0:	ff010113          	addi	sp,sp,-16
    800077f4:	00813423          	sd	s0,8(sp)
    800077f8:	01010413          	addi	s0,sp,16
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	00003597          	auipc	a1,0x3
    80007804:	1a058593          	addi	a1,a1,416 # 8000a9a0 <_ZZ13SprintIntegermE6digits+0x538>
    80007808:	00007517          	auipc	a0,0x7
    8000780c:	80850513          	addi	a0,a0,-2040 # 8000e010 <tickslock>
    80007810:	01010113          	addi	sp,sp,16
    80007814:	00001317          	auipc	t1,0x1
    80007818:	5c430067          	jr	1476(t1) # 80008dd8 <initlock>

000000008000781c <trapinithart>:
    8000781c:	ff010113          	addi	sp,sp,-16
    80007820:	00813423          	sd	s0,8(sp)
    80007824:	01010413          	addi	s0,sp,16
    80007828:	00000797          	auipc	a5,0x0
    8000782c:	2f878793          	addi	a5,a5,760 # 80007b20 <kernelvec>
    80007830:	10579073          	csrw	stvec,a5
    80007834:	00813403          	ld	s0,8(sp)
    80007838:	01010113          	addi	sp,sp,16
    8000783c:	00008067          	ret

0000000080007840 <usertrap>:
    80007840:	ff010113          	addi	sp,sp,-16
    80007844:	00813423          	sd	s0,8(sp)
    80007848:	01010413          	addi	s0,sp,16
    8000784c:	00813403          	ld	s0,8(sp)
    80007850:	01010113          	addi	sp,sp,16
    80007854:	00008067          	ret

0000000080007858 <usertrapret>:
    80007858:	ff010113          	addi	sp,sp,-16
    8000785c:	00813423          	sd	s0,8(sp)
    80007860:	01010413          	addi	s0,sp,16
    80007864:	00813403          	ld	s0,8(sp)
    80007868:	01010113          	addi	sp,sp,16
    8000786c:	00008067          	ret

0000000080007870 <kerneltrap>:
    80007870:	fe010113          	addi	sp,sp,-32
    80007874:	00813823          	sd	s0,16(sp)
    80007878:	00113c23          	sd	ra,24(sp)
    8000787c:	00913423          	sd	s1,8(sp)
    80007880:	02010413          	addi	s0,sp,32
    80007884:	142025f3          	csrr	a1,scause
    80007888:	100027f3          	csrr	a5,sstatus
    8000788c:	0027f793          	andi	a5,a5,2
    80007890:	10079c63          	bnez	a5,800079a8 <kerneltrap+0x138>
    80007894:	142027f3          	csrr	a5,scause
    80007898:	0207ce63          	bltz	a5,800078d4 <kerneltrap+0x64>
    8000789c:	00003517          	auipc	a0,0x3
    800078a0:	14c50513          	addi	a0,a0,332 # 8000a9e8 <_ZZ13SprintIntegermE6digits+0x580>
    800078a4:	00001097          	auipc	ra,0x1
    800078a8:	884080e7          	jalr	-1916(ra) # 80008128 <__printf>
    800078ac:	141025f3          	csrr	a1,sepc
    800078b0:	14302673          	csrr	a2,stval
    800078b4:	00003517          	auipc	a0,0x3
    800078b8:	14450513          	addi	a0,a0,324 # 8000a9f8 <_ZZ13SprintIntegermE6digits+0x590>
    800078bc:	00001097          	auipc	ra,0x1
    800078c0:	86c080e7          	jalr	-1940(ra) # 80008128 <__printf>
    800078c4:	00003517          	auipc	a0,0x3
    800078c8:	14c50513          	addi	a0,a0,332 # 8000aa10 <_ZZ13SprintIntegermE6digits+0x5a8>
    800078cc:	00001097          	auipc	ra,0x1
    800078d0:	800080e7          	jalr	-2048(ra) # 800080cc <panic>
    800078d4:	0ff7f713          	andi	a4,a5,255
    800078d8:	00900693          	li	a3,9
    800078dc:	04d70063          	beq	a4,a3,8000791c <kerneltrap+0xac>
    800078e0:	fff00713          	li	a4,-1
    800078e4:	03f71713          	slli	a4,a4,0x3f
    800078e8:	00170713          	addi	a4,a4,1
    800078ec:	fae798e3          	bne	a5,a4,8000789c <kerneltrap+0x2c>
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	e00080e7          	jalr	-512(ra) # 800076f0 <cpuid>
    800078f8:	06050663          	beqz	a0,80007964 <kerneltrap+0xf4>
    800078fc:	144027f3          	csrr	a5,sip
    80007900:	ffd7f793          	andi	a5,a5,-3
    80007904:	14479073          	csrw	sip,a5
    80007908:	01813083          	ld	ra,24(sp)
    8000790c:	01013403          	ld	s0,16(sp)
    80007910:	00813483          	ld	s1,8(sp)
    80007914:	02010113          	addi	sp,sp,32
    80007918:	00008067          	ret
    8000791c:	00000097          	auipc	ra,0x0
    80007920:	3c8080e7          	jalr	968(ra) # 80007ce4 <plic_claim>
    80007924:	00a00793          	li	a5,10
    80007928:	00050493          	mv	s1,a0
    8000792c:	06f50863          	beq	a0,a5,8000799c <kerneltrap+0x12c>
    80007930:	fc050ce3          	beqz	a0,80007908 <kerneltrap+0x98>
    80007934:	00050593          	mv	a1,a0
    80007938:	00003517          	auipc	a0,0x3
    8000793c:	09050513          	addi	a0,a0,144 # 8000a9c8 <_ZZ13SprintIntegermE6digits+0x560>
    80007940:	00000097          	auipc	ra,0x0
    80007944:	7e8080e7          	jalr	2024(ra) # 80008128 <__printf>
    80007948:	01013403          	ld	s0,16(sp)
    8000794c:	01813083          	ld	ra,24(sp)
    80007950:	00048513          	mv	a0,s1
    80007954:	00813483          	ld	s1,8(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00000317          	auipc	t1,0x0
    80007960:	3c030067          	jr	960(t1) # 80007d1c <plic_complete>
    80007964:	00006517          	auipc	a0,0x6
    80007968:	6ac50513          	addi	a0,a0,1708 # 8000e010 <tickslock>
    8000796c:	00001097          	auipc	ra,0x1
    80007970:	490080e7          	jalr	1168(ra) # 80008dfc <acquire>
    80007974:	00005717          	auipc	a4,0x5
    80007978:	50070713          	addi	a4,a4,1280 # 8000ce74 <ticks>
    8000797c:	00072783          	lw	a5,0(a4)
    80007980:	00006517          	auipc	a0,0x6
    80007984:	69050513          	addi	a0,a0,1680 # 8000e010 <tickslock>
    80007988:	0017879b          	addiw	a5,a5,1
    8000798c:	00f72023          	sw	a5,0(a4)
    80007990:	00001097          	auipc	ra,0x1
    80007994:	538080e7          	jalr	1336(ra) # 80008ec8 <release>
    80007998:	f65ff06f          	j	800078fc <kerneltrap+0x8c>
    8000799c:	00001097          	auipc	ra,0x1
    800079a0:	094080e7          	jalr	148(ra) # 80008a30 <uartintr>
    800079a4:	fa5ff06f          	j	80007948 <kerneltrap+0xd8>
    800079a8:	00003517          	auipc	a0,0x3
    800079ac:	00050513          	mv	a0,a0
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	71c080e7          	jalr	1820(ra) # 800080cc <panic>

00000000800079b8 <clockintr>:
    800079b8:	fe010113          	addi	sp,sp,-32
    800079bc:	00813823          	sd	s0,16(sp)
    800079c0:	00913423          	sd	s1,8(sp)
    800079c4:	00113c23          	sd	ra,24(sp)
    800079c8:	02010413          	addi	s0,sp,32
    800079cc:	00006497          	auipc	s1,0x6
    800079d0:	64448493          	addi	s1,s1,1604 # 8000e010 <tickslock>
    800079d4:	00048513          	mv	a0,s1
    800079d8:	00001097          	auipc	ra,0x1
    800079dc:	424080e7          	jalr	1060(ra) # 80008dfc <acquire>
    800079e0:	00005717          	auipc	a4,0x5
    800079e4:	49470713          	addi	a4,a4,1172 # 8000ce74 <ticks>
    800079e8:	00072783          	lw	a5,0(a4)
    800079ec:	01013403          	ld	s0,16(sp)
    800079f0:	01813083          	ld	ra,24(sp)
    800079f4:	00048513          	mv	a0,s1
    800079f8:	0017879b          	addiw	a5,a5,1
    800079fc:	00813483          	ld	s1,8(sp)
    80007a00:	00f72023          	sw	a5,0(a4)
    80007a04:	02010113          	addi	sp,sp,32
    80007a08:	00001317          	auipc	t1,0x1
    80007a0c:	4c030067          	jr	1216(t1) # 80008ec8 <release>

0000000080007a10 <devintr>:
    80007a10:	142027f3          	csrr	a5,scause
    80007a14:	00000513          	li	a0,0
    80007a18:	0007c463          	bltz	a5,80007a20 <devintr+0x10>
    80007a1c:	00008067          	ret
    80007a20:	fe010113          	addi	sp,sp,-32
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00113c23          	sd	ra,24(sp)
    80007a2c:	00913423          	sd	s1,8(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	0ff7f713          	andi	a4,a5,255
    80007a38:	00900693          	li	a3,9
    80007a3c:	04d70c63          	beq	a4,a3,80007a94 <devintr+0x84>
    80007a40:	fff00713          	li	a4,-1
    80007a44:	03f71713          	slli	a4,a4,0x3f
    80007a48:	00170713          	addi	a4,a4,1
    80007a4c:	00e78c63          	beq	a5,a4,80007a64 <devintr+0x54>
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	01013403          	ld	s0,16(sp)
    80007a58:	00813483          	ld	s1,8(sp)
    80007a5c:	02010113          	addi	sp,sp,32
    80007a60:	00008067          	ret
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	c8c080e7          	jalr	-884(ra) # 800076f0 <cpuid>
    80007a6c:	06050663          	beqz	a0,80007ad8 <devintr+0xc8>
    80007a70:	144027f3          	csrr	a5,sip
    80007a74:	ffd7f793          	andi	a5,a5,-3
    80007a78:	14479073          	csrw	sip,a5
    80007a7c:	01813083          	ld	ra,24(sp)
    80007a80:	01013403          	ld	s0,16(sp)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	00200513          	li	a0,2
    80007a8c:	02010113          	addi	sp,sp,32
    80007a90:	00008067          	ret
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	250080e7          	jalr	592(ra) # 80007ce4 <plic_claim>
    80007a9c:	00a00793          	li	a5,10
    80007aa0:	00050493          	mv	s1,a0
    80007aa4:	06f50663          	beq	a0,a5,80007b10 <devintr+0x100>
    80007aa8:	00100513          	li	a0,1
    80007aac:	fa0482e3          	beqz	s1,80007a50 <devintr+0x40>
    80007ab0:	00048593          	mv	a1,s1
    80007ab4:	00003517          	auipc	a0,0x3
    80007ab8:	f1450513          	addi	a0,a0,-236 # 8000a9c8 <_ZZ13SprintIntegermE6digits+0x560>
    80007abc:	00000097          	auipc	ra,0x0
    80007ac0:	66c080e7          	jalr	1644(ra) # 80008128 <__printf>
    80007ac4:	00048513          	mv	a0,s1
    80007ac8:	00000097          	auipc	ra,0x0
    80007acc:	254080e7          	jalr	596(ra) # 80007d1c <plic_complete>
    80007ad0:	00100513          	li	a0,1
    80007ad4:	f7dff06f          	j	80007a50 <devintr+0x40>
    80007ad8:	00006517          	auipc	a0,0x6
    80007adc:	53850513          	addi	a0,a0,1336 # 8000e010 <tickslock>
    80007ae0:	00001097          	auipc	ra,0x1
    80007ae4:	31c080e7          	jalr	796(ra) # 80008dfc <acquire>
    80007ae8:	00005717          	auipc	a4,0x5
    80007aec:	38c70713          	addi	a4,a4,908 # 8000ce74 <ticks>
    80007af0:	00072783          	lw	a5,0(a4)
    80007af4:	00006517          	auipc	a0,0x6
    80007af8:	51c50513          	addi	a0,a0,1308 # 8000e010 <tickslock>
    80007afc:	0017879b          	addiw	a5,a5,1
    80007b00:	00f72023          	sw	a5,0(a4)
    80007b04:	00001097          	auipc	ra,0x1
    80007b08:	3c4080e7          	jalr	964(ra) # 80008ec8 <release>
    80007b0c:	f65ff06f          	j	80007a70 <devintr+0x60>
    80007b10:	00001097          	auipc	ra,0x1
    80007b14:	f20080e7          	jalr	-224(ra) # 80008a30 <uartintr>
    80007b18:	fadff06f          	j	80007ac4 <devintr+0xb4>
    80007b1c:	0000                	unimp
	...

0000000080007b20 <kernelvec>:
    80007b20:	f0010113          	addi	sp,sp,-256
    80007b24:	00113023          	sd	ra,0(sp)
    80007b28:	00213423          	sd	sp,8(sp)
    80007b2c:	00313823          	sd	gp,16(sp)
    80007b30:	00413c23          	sd	tp,24(sp)
    80007b34:	02513023          	sd	t0,32(sp)
    80007b38:	02613423          	sd	t1,40(sp)
    80007b3c:	02713823          	sd	t2,48(sp)
    80007b40:	02813c23          	sd	s0,56(sp)
    80007b44:	04913023          	sd	s1,64(sp)
    80007b48:	04a13423          	sd	a0,72(sp)
    80007b4c:	04b13823          	sd	a1,80(sp)
    80007b50:	04c13c23          	sd	a2,88(sp)
    80007b54:	06d13023          	sd	a3,96(sp)
    80007b58:	06e13423          	sd	a4,104(sp)
    80007b5c:	06f13823          	sd	a5,112(sp)
    80007b60:	07013c23          	sd	a6,120(sp)
    80007b64:	09113023          	sd	a7,128(sp)
    80007b68:	09213423          	sd	s2,136(sp)
    80007b6c:	09313823          	sd	s3,144(sp)
    80007b70:	09413c23          	sd	s4,152(sp)
    80007b74:	0b513023          	sd	s5,160(sp)
    80007b78:	0b613423          	sd	s6,168(sp)
    80007b7c:	0b713823          	sd	s7,176(sp)
    80007b80:	0b813c23          	sd	s8,184(sp)
    80007b84:	0d913023          	sd	s9,192(sp)
    80007b88:	0da13423          	sd	s10,200(sp)
    80007b8c:	0db13823          	sd	s11,208(sp)
    80007b90:	0dc13c23          	sd	t3,216(sp)
    80007b94:	0fd13023          	sd	t4,224(sp)
    80007b98:	0fe13423          	sd	t5,232(sp)
    80007b9c:	0ff13823          	sd	t6,240(sp)
    80007ba0:	cd1ff0ef          	jal	ra,80007870 <kerneltrap>
    80007ba4:	00013083          	ld	ra,0(sp)
    80007ba8:	00813103          	ld	sp,8(sp)
    80007bac:	01013183          	ld	gp,16(sp)
    80007bb0:	02013283          	ld	t0,32(sp)
    80007bb4:	02813303          	ld	t1,40(sp)
    80007bb8:	03013383          	ld	t2,48(sp)
    80007bbc:	03813403          	ld	s0,56(sp)
    80007bc0:	04013483          	ld	s1,64(sp)
    80007bc4:	04813503          	ld	a0,72(sp)
    80007bc8:	05013583          	ld	a1,80(sp)
    80007bcc:	05813603          	ld	a2,88(sp)
    80007bd0:	06013683          	ld	a3,96(sp)
    80007bd4:	06813703          	ld	a4,104(sp)
    80007bd8:	07013783          	ld	a5,112(sp)
    80007bdc:	07813803          	ld	a6,120(sp)
    80007be0:	08013883          	ld	a7,128(sp)
    80007be4:	08813903          	ld	s2,136(sp)
    80007be8:	09013983          	ld	s3,144(sp)
    80007bec:	09813a03          	ld	s4,152(sp)
    80007bf0:	0a013a83          	ld	s5,160(sp)
    80007bf4:	0a813b03          	ld	s6,168(sp)
    80007bf8:	0b013b83          	ld	s7,176(sp)
    80007bfc:	0b813c03          	ld	s8,184(sp)
    80007c00:	0c013c83          	ld	s9,192(sp)
    80007c04:	0c813d03          	ld	s10,200(sp)
    80007c08:	0d013d83          	ld	s11,208(sp)
    80007c0c:	0d813e03          	ld	t3,216(sp)
    80007c10:	0e013e83          	ld	t4,224(sp)
    80007c14:	0e813f03          	ld	t5,232(sp)
    80007c18:	0f013f83          	ld	t6,240(sp)
    80007c1c:	10010113          	addi	sp,sp,256
    80007c20:	10200073          	sret
    80007c24:	00000013          	nop
    80007c28:	00000013          	nop
    80007c2c:	00000013          	nop

0000000080007c30 <timervec>:
    80007c30:	34051573          	csrrw	a0,mscratch,a0
    80007c34:	00b53023          	sd	a1,0(a0)
    80007c38:	00c53423          	sd	a2,8(a0)
    80007c3c:	00d53823          	sd	a3,16(a0)
    80007c40:	01853583          	ld	a1,24(a0)
    80007c44:	02053603          	ld	a2,32(a0)
    80007c48:	0005b683          	ld	a3,0(a1)
    80007c4c:	00c686b3          	add	a3,a3,a2
    80007c50:	00d5b023          	sd	a3,0(a1)
    80007c54:	00200593          	li	a1,2
    80007c58:	14459073          	csrw	sip,a1
    80007c5c:	01053683          	ld	a3,16(a0)
    80007c60:	00853603          	ld	a2,8(a0)
    80007c64:	00053583          	ld	a1,0(a0)
    80007c68:	34051573          	csrrw	a0,mscratch,a0
    80007c6c:	30200073          	mret

0000000080007c70 <plicinit>:
    80007c70:	ff010113          	addi	sp,sp,-16
    80007c74:	00813423          	sd	s0,8(sp)
    80007c78:	01010413          	addi	s0,sp,16
    80007c7c:	00813403          	ld	s0,8(sp)
    80007c80:	0c0007b7          	lui	a5,0xc000
    80007c84:	00100713          	li	a4,1
    80007c88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007c8c:	00e7a223          	sw	a4,4(a5)
    80007c90:	01010113          	addi	sp,sp,16
    80007c94:	00008067          	ret

0000000080007c98 <plicinithart>:
    80007c98:	ff010113          	addi	sp,sp,-16
    80007c9c:	00813023          	sd	s0,0(sp)
    80007ca0:	00113423          	sd	ra,8(sp)
    80007ca4:	01010413          	addi	s0,sp,16
    80007ca8:	00000097          	auipc	ra,0x0
    80007cac:	a48080e7          	jalr	-1464(ra) # 800076f0 <cpuid>
    80007cb0:	0085171b          	slliw	a4,a0,0x8
    80007cb4:	0c0027b7          	lui	a5,0xc002
    80007cb8:	00e787b3          	add	a5,a5,a4
    80007cbc:	40200713          	li	a4,1026
    80007cc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007cc4:	00813083          	ld	ra,8(sp)
    80007cc8:	00013403          	ld	s0,0(sp)
    80007ccc:	00d5151b          	slliw	a0,a0,0xd
    80007cd0:	0c2017b7          	lui	a5,0xc201
    80007cd4:	00a78533          	add	a0,a5,a0
    80007cd8:	00052023          	sw	zero,0(a0)
    80007cdc:	01010113          	addi	sp,sp,16
    80007ce0:	00008067          	ret

0000000080007ce4 <plic_claim>:
    80007ce4:	ff010113          	addi	sp,sp,-16
    80007ce8:	00813023          	sd	s0,0(sp)
    80007cec:	00113423          	sd	ra,8(sp)
    80007cf0:	01010413          	addi	s0,sp,16
    80007cf4:	00000097          	auipc	ra,0x0
    80007cf8:	9fc080e7          	jalr	-1540(ra) # 800076f0 <cpuid>
    80007cfc:	00813083          	ld	ra,8(sp)
    80007d00:	00013403          	ld	s0,0(sp)
    80007d04:	00d5151b          	slliw	a0,a0,0xd
    80007d08:	0c2017b7          	lui	a5,0xc201
    80007d0c:	00a78533          	add	a0,a5,a0
    80007d10:	00452503          	lw	a0,4(a0)
    80007d14:	01010113          	addi	sp,sp,16
    80007d18:	00008067          	ret

0000000080007d1c <plic_complete>:
    80007d1c:	fe010113          	addi	sp,sp,-32
    80007d20:	00813823          	sd	s0,16(sp)
    80007d24:	00913423          	sd	s1,8(sp)
    80007d28:	00113c23          	sd	ra,24(sp)
    80007d2c:	02010413          	addi	s0,sp,32
    80007d30:	00050493          	mv	s1,a0
    80007d34:	00000097          	auipc	ra,0x0
    80007d38:	9bc080e7          	jalr	-1604(ra) # 800076f0 <cpuid>
    80007d3c:	01813083          	ld	ra,24(sp)
    80007d40:	01013403          	ld	s0,16(sp)
    80007d44:	00d5179b          	slliw	a5,a0,0xd
    80007d48:	0c201737          	lui	a4,0xc201
    80007d4c:	00f707b3          	add	a5,a4,a5
    80007d50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007d54:	00813483          	ld	s1,8(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret

0000000080007d60 <consolewrite>:
    80007d60:	fb010113          	addi	sp,sp,-80
    80007d64:	04813023          	sd	s0,64(sp)
    80007d68:	04113423          	sd	ra,72(sp)
    80007d6c:	02913c23          	sd	s1,56(sp)
    80007d70:	03213823          	sd	s2,48(sp)
    80007d74:	03313423          	sd	s3,40(sp)
    80007d78:	03413023          	sd	s4,32(sp)
    80007d7c:	01513c23          	sd	s5,24(sp)
    80007d80:	05010413          	addi	s0,sp,80
    80007d84:	06c05c63          	blez	a2,80007dfc <consolewrite+0x9c>
    80007d88:	00060993          	mv	s3,a2
    80007d8c:	00050a13          	mv	s4,a0
    80007d90:	00058493          	mv	s1,a1
    80007d94:	00000913          	li	s2,0
    80007d98:	fff00a93          	li	s5,-1
    80007d9c:	01c0006f          	j	80007db8 <consolewrite+0x58>
    80007da0:	fbf44503          	lbu	a0,-65(s0)
    80007da4:	0019091b          	addiw	s2,s2,1
    80007da8:	00148493          	addi	s1,s1,1
    80007dac:	00001097          	auipc	ra,0x1
    80007db0:	a9c080e7          	jalr	-1380(ra) # 80008848 <uartputc>
    80007db4:	03298063          	beq	s3,s2,80007dd4 <consolewrite+0x74>
    80007db8:	00048613          	mv	a2,s1
    80007dbc:	00100693          	li	a3,1
    80007dc0:	000a0593          	mv	a1,s4
    80007dc4:	fbf40513          	addi	a0,s0,-65
    80007dc8:	00000097          	auipc	ra,0x0
    80007dcc:	9e0080e7          	jalr	-1568(ra) # 800077a8 <either_copyin>
    80007dd0:	fd5518e3          	bne	a0,s5,80007da0 <consolewrite+0x40>
    80007dd4:	04813083          	ld	ra,72(sp)
    80007dd8:	04013403          	ld	s0,64(sp)
    80007ddc:	03813483          	ld	s1,56(sp)
    80007de0:	02813983          	ld	s3,40(sp)
    80007de4:	02013a03          	ld	s4,32(sp)
    80007de8:	01813a83          	ld	s5,24(sp)
    80007dec:	00090513          	mv	a0,s2
    80007df0:	03013903          	ld	s2,48(sp)
    80007df4:	05010113          	addi	sp,sp,80
    80007df8:	00008067          	ret
    80007dfc:	00000913          	li	s2,0
    80007e00:	fd5ff06f          	j	80007dd4 <consolewrite+0x74>

0000000080007e04 <consoleread>:
    80007e04:	f9010113          	addi	sp,sp,-112
    80007e08:	06813023          	sd	s0,96(sp)
    80007e0c:	04913c23          	sd	s1,88(sp)
    80007e10:	05213823          	sd	s2,80(sp)
    80007e14:	05313423          	sd	s3,72(sp)
    80007e18:	05413023          	sd	s4,64(sp)
    80007e1c:	03513c23          	sd	s5,56(sp)
    80007e20:	03613823          	sd	s6,48(sp)
    80007e24:	03713423          	sd	s7,40(sp)
    80007e28:	03813023          	sd	s8,32(sp)
    80007e2c:	06113423          	sd	ra,104(sp)
    80007e30:	01913c23          	sd	s9,24(sp)
    80007e34:	07010413          	addi	s0,sp,112
    80007e38:	00060b93          	mv	s7,a2
    80007e3c:	00050913          	mv	s2,a0
    80007e40:	00058c13          	mv	s8,a1
    80007e44:	00060b1b          	sext.w	s6,a2
    80007e48:	00006497          	auipc	s1,0x6
    80007e4c:	1f048493          	addi	s1,s1,496 # 8000e038 <cons>
    80007e50:	00400993          	li	s3,4
    80007e54:	fff00a13          	li	s4,-1
    80007e58:	00a00a93          	li	s5,10
    80007e5c:	05705e63          	blez	s7,80007eb8 <consoleread+0xb4>
    80007e60:	09c4a703          	lw	a4,156(s1)
    80007e64:	0984a783          	lw	a5,152(s1)
    80007e68:	0007071b          	sext.w	a4,a4
    80007e6c:	08e78463          	beq	a5,a4,80007ef4 <consoleread+0xf0>
    80007e70:	07f7f713          	andi	a4,a5,127
    80007e74:	00e48733          	add	a4,s1,a4
    80007e78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007e7c:	0017869b          	addiw	a3,a5,1
    80007e80:	08d4ac23          	sw	a3,152(s1)
    80007e84:	00070c9b          	sext.w	s9,a4
    80007e88:	0b370663          	beq	a4,s3,80007f34 <consoleread+0x130>
    80007e8c:	00100693          	li	a3,1
    80007e90:	f9f40613          	addi	a2,s0,-97
    80007e94:	000c0593          	mv	a1,s8
    80007e98:	00090513          	mv	a0,s2
    80007e9c:	f8e40fa3          	sb	a4,-97(s0)
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	8bc080e7          	jalr	-1860(ra) # 8000775c <either_copyout>
    80007ea8:	01450863          	beq	a0,s4,80007eb8 <consoleread+0xb4>
    80007eac:	001c0c13          	addi	s8,s8,1
    80007eb0:	fffb8b9b          	addiw	s7,s7,-1
    80007eb4:	fb5c94e3          	bne	s9,s5,80007e5c <consoleread+0x58>
    80007eb8:	000b851b          	sext.w	a0,s7
    80007ebc:	06813083          	ld	ra,104(sp)
    80007ec0:	06013403          	ld	s0,96(sp)
    80007ec4:	05813483          	ld	s1,88(sp)
    80007ec8:	05013903          	ld	s2,80(sp)
    80007ecc:	04813983          	ld	s3,72(sp)
    80007ed0:	04013a03          	ld	s4,64(sp)
    80007ed4:	03813a83          	ld	s5,56(sp)
    80007ed8:	02813b83          	ld	s7,40(sp)
    80007edc:	02013c03          	ld	s8,32(sp)
    80007ee0:	01813c83          	ld	s9,24(sp)
    80007ee4:	40ab053b          	subw	a0,s6,a0
    80007ee8:	03013b03          	ld	s6,48(sp)
    80007eec:	07010113          	addi	sp,sp,112
    80007ef0:	00008067          	ret
    80007ef4:	00001097          	auipc	ra,0x1
    80007ef8:	1d8080e7          	jalr	472(ra) # 800090cc <push_on>
    80007efc:	0984a703          	lw	a4,152(s1)
    80007f00:	09c4a783          	lw	a5,156(s1)
    80007f04:	0007879b          	sext.w	a5,a5
    80007f08:	fef70ce3          	beq	a4,a5,80007f00 <consoleread+0xfc>
    80007f0c:	00001097          	auipc	ra,0x1
    80007f10:	234080e7          	jalr	564(ra) # 80009140 <pop_on>
    80007f14:	0984a783          	lw	a5,152(s1)
    80007f18:	07f7f713          	andi	a4,a5,127
    80007f1c:	00e48733          	add	a4,s1,a4
    80007f20:	01874703          	lbu	a4,24(a4)
    80007f24:	0017869b          	addiw	a3,a5,1
    80007f28:	08d4ac23          	sw	a3,152(s1)
    80007f2c:	00070c9b          	sext.w	s9,a4
    80007f30:	f5371ee3          	bne	a4,s3,80007e8c <consoleread+0x88>
    80007f34:	000b851b          	sext.w	a0,s7
    80007f38:	f96bf2e3          	bgeu	s7,s6,80007ebc <consoleread+0xb8>
    80007f3c:	08f4ac23          	sw	a5,152(s1)
    80007f40:	f7dff06f          	j	80007ebc <consoleread+0xb8>

0000000080007f44 <consputc>:
    80007f44:	10000793          	li	a5,256
    80007f48:	00f50663          	beq	a0,a5,80007f54 <consputc+0x10>
    80007f4c:	00001317          	auipc	t1,0x1
    80007f50:	9f430067          	jr	-1548(t1) # 80008940 <uartputc_sync>
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00113423          	sd	ra,8(sp)
    80007f5c:	00813023          	sd	s0,0(sp)
    80007f60:	01010413          	addi	s0,sp,16
    80007f64:	00800513          	li	a0,8
    80007f68:	00001097          	auipc	ra,0x1
    80007f6c:	9d8080e7          	jalr	-1576(ra) # 80008940 <uartputc_sync>
    80007f70:	02000513          	li	a0,32
    80007f74:	00001097          	auipc	ra,0x1
    80007f78:	9cc080e7          	jalr	-1588(ra) # 80008940 <uartputc_sync>
    80007f7c:	00013403          	ld	s0,0(sp)
    80007f80:	00813083          	ld	ra,8(sp)
    80007f84:	00800513          	li	a0,8
    80007f88:	01010113          	addi	sp,sp,16
    80007f8c:	00001317          	auipc	t1,0x1
    80007f90:	9b430067          	jr	-1612(t1) # 80008940 <uartputc_sync>

0000000080007f94 <consoleintr>:
    80007f94:	fe010113          	addi	sp,sp,-32
    80007f98:	00813823          	sd	s0,16(sp)
    80007f9c:	00913423          	sd	s1,8(sp)
    80007fa0:	01213023          	sd	s2,0(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	02010413          	addi	s0,sp,32
    80007fac:	00006917          	auipc	s2,0x6
    80007fb0:	08c90913          	addi	s2,s2,140 # 8000e038 <cons>
    80007fb4:	00050493          	mv	s1,a0
    80007fb8:	00090513          	mv	a0,s2
    80007fbc:	00001097          	auipc	ra,0x1
    80007fc0:	e40080e7          	jalr	-448(ra) # 80008dfc <acquire>
    80007fc4:	02048c63          	beqz	s1,80007ffc <consoleintr+0x68>
    80007fc8:	0a092783          	lw	a5,160(s2)
    80007fcc:	09892703          	lw	a4,152(s2)
    80007fd0:	07f00693          	li	a3,127
    80007fd4:	40e7873b          	subw	a4,a5,a4
    80007fd8:	02e6e263          	bltu	a3,a4,80007ffc <consoleintr+0x68>
    80007fdc:	00d00713          	li	a4,13
    80007fe0:	04e48063          	beq	s1,a4,80008020 <consoleintr+0x8c>
    80007fe4:	07f7f713          	andi	a4,a5,127
    80007fe8:	00e90733          	add	a4,s2,a4
    80007fec:	0017879b          	addiw	a5,a5,1
    80007ff0:	0af92023          	sw	a5,160(s2)
    80007ff4:	00970c23          	sb	s1,24(a4)
    80007ff8:	08f92e23          	sw	a5,156(s2)
    80007ffc:	01013403          	ld	s0,16(sp)
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	00813483          	ld	s1,8(sp)
    80008008:	00013903          	ld	s2,0(sp)
    8000800c:	00006517          	auipc	a0,0x6
    80008010:	02c50513          	addi	a0,a0,44 # 8000e038 <cons>
    80008014:	02010113          	addi	sp,sp,32
    80008018:	00001317          	auipc	t1,0x1
    8000801c:	eb030067          	jr	-336(t1) # 80008ec8 <release>
    80008020:	00a00493          	li	s1,10
    80008024:	fc1ff06f          	j	80007fe4 <consoleintr+0x50>

0000000080008028 <consoleinit>:
    80008028:	fe010113          	addi	sp,sp,-32
    8000802c:	00113c23          	sd	ra,24(sp)
    80008030:	00813823          	sd	s0,16(sp)
    80008034:	00913423          	sd	s1,8(sp)
    80008038:	02010413          	addi	s0,sp,32
    8000803c:	00006497          	auipc	s1,0x6
    80008040:	ffc48493          	addi	s1,s1,-4 # 8000e038 <cons>
    80008044:	00048513          	mv	a0,s1
    80008048:	00003597          	auipc	a1,0x3
    8000804c:	9d858593          	addi	a1,a1,-1576 # 8000aa20 <_ZZ13SprintIntegermE6digits+0x5b8>
    80008050:	00001097          	auipc	ra,0x1
    80008054:	d88080e7          	jalr	-632(ra) # 80008dd8 <initlock>
    80008058:	00000097          	auipc	ra,0x0
    8000805c:	7ac080e7          	jalr	1964(ra) # 80008804 <uartinit>
    80008060:	01813083          	ld	ra,24(sp)
    80008064:	01013403          	ld	s0,16(sp)
    80008068:	00000797          	auipc	a5,0x0
    8000806c:	d9c78793          	addi	a5,a5,-612 # 80007e04 <consoleread>
    80008070:	0af4bc23          	sd	a5,184(s1)
    80008074:	00000797          	auipc	a5,0x0
    80008078:	cec78793          	addi	a5,a5,-788 # 80007d60 <consolewrite>
    8000807c:	0cf4b023          	sd	a5,192(s1)
    80008080:	00813483          	ld	s1,8(sp)
    80008084:	02010113          	addi	sp,sp,32
    80008088:	00008067          	ret

000000008000808c <console_read>:
    8000808c:	ff010113          	addi	sp,sp,-16
    80008090:	00813423          	sd	s0,8(sp)
    80008094:	01010413          	addi	s0,sp,16
    80008098:	00813403          	ld	s0,8(sp)
    8000809c:	00006317          	auipc	t1,0x6
    800080a0:	05433303          	ld	t1,84(t1) # 8000e0f0 <devsw+0x10>
    800080a4:	01010113          	addi	sp,sp,16
    800080a8:	00030067          	jr	t1

00000000800080ac <console_write>:
    800080ac:	ff010113          	addi	sp,sp,-16
    800080b0:	00813423          	sd	s0,8(sp)
    800080b4:	01010413          	addi	s0,sp,16
    800080b8:	00813403          	ld	s0,8(sp)
    800080bc:	00006317          	auipc	t1,0x6
    800080c0:	03c33303          	ld	t1,60(t1) # 8000e0f8 <devsw+0x18>
    800080c4:	01010113          	addi	sp,sp,16
    800080c8:	00030067          	jr	t1

00000000800080cc <panic>:
    800080cc:	fe010113          	addi	sp,sp,-32
    800080d0:	00113c23          	sd	ra,24(sp)
    800080d4:	00813823          	sd	s0,16(sp)
    800080d8:	00913423          	sd	s1,8(sp)
    800080dc:	02010413          	addi	s0,sp,32
    800080e0:	00050493          	mv	s1,a0
    800080e4:	00003517          	auipc	a0,0x3
    800080e8:	94450513          	addi	a0,a0,-1724 # 8000aa28 <_ZZ13SprintIntegermE6digits+0x5c0>
    800080ec:	00006797          	auipc	a5,0x6
    800080f0:	0a07a623          	sw	zero,172(a5) # 8000e198 <pr+0x18>
    800080f4:	00000097          	auipc	ra,0x0
    800080f8:	034080e7          	jalr	52(ra) # 80008128 <__printf>
    800080fc:	00048513          	mv	a0,s1
    80008100:	00000097          	auipc	ra,0x0
    80008104:	028080e7          	jalr	40(ra) # 80008128 <__printf>
    80008108:	00002517          	auipc	a0,0x2
    8000810c:	6a850513          	addi	a0,a0,1704 # 8000a7b0 <_ZZ13SprintIntegermE6digits+0x348>
    80008110:	00000097          	auipc	ra,0x0
    80008114:	018080e7          	jalr	24(ra) # 80008128 <__printf>
    80008118:	00100793          	li	a5,1
    8000811c:	00005717          	auipc	a4,0x5
    80008120:	d4f72e23          	sw	a5,-676(a4) # 8000ce78 <panicked>
    80008124:	0000006f          	j	80008124 <panic+0x58>

0000000080008128 <__printf>:
    80008128:	f3010113          	addi	sp,sp,-208
    8000812c:	08813023          	sd	s0,128(sp)
    80008130:	07313423          	sd	s3,104(sp)
    80008134:	09010413          	addi	s0,sp,144
    80008138:	05813023          	sd	s8,64(sp)
    8000813c:	08113423          	sd	ra,136(sp)
    80008140:	06913c23          	sd	s1,120(sp)
    80008144:	07213823          	sd	s2,112(sp)
    80008148:	07413023          	sd	s4,96(sp)
    8000814c:	05513c23          	sd	s5,88(sp)
    80008150:	05613823          	sd	s6,80(sp)
    80008154:	05713423          	sd	s7,72(sp)
    80008158:	03913c23          	sd	s9,56(sp)
    8000815c:	03a13823          	sd	s10,48(sp)
    80008160:	03b13423          	sd	s11,40(sp)
    80008164:	00006317          	auipc	t1,0x6
    80008168:	01c30313          	addi	t1,t1,28 # 8000e180 <pr>
    8000816c:	01832c03          	lw	s8,24(t1)
    80008170:	00b43423          	sd	a1,8(s0)
    80008174:	00c43823          	sd	a2,16(s0)
    80008178:	00d43c23          	sd	a3,24(s0)
    8000817c:	02e43023          	sd	a4,32(s0)
    80008180:	02f43423          	sd	a5,40(s0)
    80008184:	03043823          	sd	a6,48(s0)
    80008188:	03143c23          	sd	a7,56(s0)
    8000818c:	00050993          	mv	s3,a0
    80008190:	4a0c1663          	bnez	s8,8000863c <__printf+0x514>
    80008194:	60098c63          	beqz	s3,800087ac <__printf+0x684>
    80008198:	0009c503          	lbu	a0,0(s3)
    8000819c:	00840793          	addi	a5,s0,8
    800081a0:	f6f43c23          	sd	a5,-136(s0)
    800081a4:	00000493          	li	s1,0
    800081a8:	22050063          	beqz	a0,800083c8 <__printf+0x2a0>
    800081ac:	00002a37          	lui	s4,0x2
    800081b0:	00018ab7          	lui	s5,0x18
    800081b4:	000f4b37          	lui	s6,0xf4
    800081b8:	00989bb7          	lui	s7,0x989
    800081bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800081c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800081c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800081c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800081cc:	00148c9b          	addiw	s9,s1,1
    800081d0:	02500793          	li	a5,37
    800081d4:	01998933          	add	s2,s3,s9
    800081d8:	38f51263          	bne	a0,a5,8000855c <__printf+0x434>
    800081dc:	00094783          	lbu	a5,0(s2)
    800081e0:	00078c9b          	sext.w	s9,a5
    800081e4:	1e078263          	beqz	a5,800083c8 <__printf+0x2a0>
    800081e8:	0024849b          	addiw	s1,s1,2
    800081ec:	07000713          	li	a4,112
    800081f0:	00998933          	add	s2,s3,s1
    800081f4:	38e78a63          	beq	a5,a4,80008588 <__printf+0x460>
    800081f8:	20f76863          	bltu	a4,a5,80008408 <__printf+0x2e0>
    800081fc:	42a78863          	beq	a5,a0,8000862c <__printf+0x504>
    80008200:	06400713          	li	a4,100
    80008204:	40e79663          	bne	a5,a4,80008610 <__printf+0x4e8>
    80008208:	f7843783          	ld	a5,-136(s0)
    8000820c:	0007a603          	lw	a2,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	f6f43c23          	sd	a5,-136(s0)
    80008218:	42064a63          	bltz	a2,8000864c <__printf+0x524>
    8000821c:	00a00713          	li	a4,10
    80008220:	02e677bb          	remuw	a5,a2,a4
    80008224:	00003d97          	auipc	s11,0x3
    80008228:	82cd8d93          	addi	s11,s11,-2004 # 8000aa50 <digits>
    8000822c:	00900593          	li	a1,9
    80008230:	0006051b          	sext.w	a0,a2
    80008234:	00000c93          	li	s9,0
    80008238:	02079793          	slli	a5,a5,0x20
    8000823c:	0207d793          	srli	a5,a5,0x20
    80008240:	00fd87b3          	add	a5,s11,a5
    80008244:	0007c783          	lbu	a5,0(a5)
    80008248:	02e656bb          	divuw	a3,a2,a4
    8000824c:	f8f40023          	sb	a5,-128(s0)
    80008250:	14c5d863          	bge	a1,a2,800083a0 <__printf+0x278>
    80008254:	06300593          	li	a1,99
    80008258:	00100c93          	li	s9,1
    8000825c:	02e6f7bb          	remuw	a5,a3,a4
    80008260:	02079793          	slli	a5,a5,0x20
    80008264:	0207d793          	srli	a5,a5,0x20
    80008268:	00fd87b3          	add	a5,s11,a5
    8000826c:	0007c783          	lbu	a5,0(a5)
    80008270:	02e6d73b          	divuw	a4,a3,a4
    80008274:	f8f400a3          	sb	a5,-127(s0)
    80008278:	12a5f463          	bgeu	a1,a0,800083a0 <__printf+0x278>
    8000827c:	00a00693          	li	a3,10
    80008280:	00900593          	li	a1,9
    80008284:	02d777bb          	remuw	a5,a4,a3
    80008288:	02079793          	slli	a5,a5,0x20
    8000828c:	0207d793          	srli	a5,a5,0x20
    80008290:	00fd87b3          	add	a5,s11,a5
    80008294:	0007c503          	lbu	a0,0(a5)
    80008298:	02d757bb          	divuw	a5,a4,a3
    8000829c:	f8a40123          	sb	a0,-126(s0)
    800082a0:	48e5f263          	bgeu	a1,a4,80008724 <__printf+0x5fc>
    800082a4:	06300513          	li	a0,99
    800082a8:	02d7f5bb          	remuw	a1,a5,a3
    800082ac:	02059593          	slli	a1,a1,0x20
    800082b0:	0205d593          	srli	a1,a1,0x20
    800082b4:	00bd85b3          	add	a1,s11,a1
    800082b8:	0005c583          	lbu	a1,0(a1)
    800082bc:	02d7d7bb          	divuw	a5,a5,a3
    800082c0:	f8b401a3          	sb	a1,-125(s0)
    800082c4:	48e57263          	bgeu	a0,a4,80008748 <__printf+0x620>
    800082c8:	3e700513          	li	a0,999
    800082cc:	02d7f5bb          	remuw	a1,a5,a3
    800082d0:	02059593          	slli	a1,a1,0x20
    800082d4:	0205d593          	srli	a1,a1,0x20
    800082d8:	00bd85b3          	add	a1,s11,a1
    800082dc:	0005c583          	lbu	a1,0(a1)
    800082e0:	02d7d7bb          	divuw	a5,a5,a3
    800082e4:	f8b40223          	sb	a1,-124(s0)
    800082e8:	46e57663          	bgeu	a0,a4,80008754 <__printf+0x62c>
    800082ec:	02d7f5bb          	remuw	a1,a5,a3
    800082f0:	02059593          	slli	a1,a1,0x20
    800082f4:	0205d593          	srli	a1,a1,0x20
    800082f8:	00bd85b3          	add	a1,s11,a1
    800082fc:	0005c583          	lbu	a1,0(a1)
    80008300:	02d7d7bb          	divuw	a5,a5,a3
    80008304:	f8b402a3          	sb	a1,-123(s0)
    80008308:	46ea7863          	bgeu	s4,a4,80008778 <__printf+0x650>
    8000830c:	02d7f5bb          	remuw	a1,a5,a3
    80008310:	02059593          	slli	a1,a1,0x20
    80008314:	0205d593          	srli	a1,a1,0x20
    80008318:	00bd85b3          	add	a1,s11,a1
    8000831c:	0005c583          	lbu	a1,0(a1)
    80008320:	02d7d7bb          	divuw	a5,a5,a3
    80008324:	f8b40323          	sb	a1,-122(s0)
    80008328:	3eeaf863          	bgeu	s5,a4,80008718 <__printf+0x5f0>
    8000832c:	02d7f5bb          	remuw	a1,a5,a3
    80008330:	02059593          	slli	a1,a1,0x20
    80008334:	0205d593          	srli	a1,a1,0x20
    80008338:	00bd85b3          	add	a1,s11,a1
    8000833c:	0005c583          	lbu	a1,0(a1)
    80008340:	02d7d7bb          	divuw	a5,a5,a3
    80008344:	f8b403a3          	sb	a1,-121(s0)
    80008348:	42eb7e63          	bgeu	s6,a4,80008784 <__printf+0x65c>
    8000834c:	02d7f5bb          	remuw	a1,a5,a3
    80008350:	02059593          	slli	a1,a1,0x20
    80008354:	0205d593          	srli	a1,a1,0x20
    80008358:	00bd85b3          	add	a1,s11,a1
    8000835c:	0005c583          	lbu	a1,0(a1)
    80008360:	02d7d7bb          	divuw	a5,a5,a3
    80008364:	f8b40423          	sb	a1,-120(s0)
    80008368:	42ebfc63          	bgeu	s7,a4,800087a0 <__printf+0x678>
    8000836c:	02079793          	slli	a5,a5,0x20
    80008370:	0207d793          	srli	a5,a5,0x20
    80008374:	00fd8db3          	add	s11,s11,a5
    80008378:	000dc703          	lbu	a4,0(s11)
    8000837c:	00a00793          	li	a5,10
    80008380:	00900c93          	li	s9,9
    80008384:	f8e404a3          	sb	a4,-119(s0)
    80008388:	00065c63          	bgez	a2,800083a0 <__printf+0x278>
    8000838c:	f9040713          	addi	a4,s0,-112
    80008390:	00f70733          	add	a4,a4,a5
    80008394:	02d00693          	li	a3,45
    80008398:	fed70823          	sb	a3,-16(a4)
    8000839c:	00078c93          	mv	s9,a5
    800083a0:	f8040793          	addi	a5,s0,-128
    800083a4:	01978cb3          	add	s9,a5,s9
    800083a8:	f7f40d13          	addi	s10,s0,-129
    800083ac:	000cc503          	lbu	a0,0(s9)
    800083b0:	fffc8c93          	addi	s9,s9,-1
    800083b4:	00000097          	auipc	ra,0x0
    800083b8:	b90080e7          	jalr	-1136(ra) # 80007f44 <consputc>
    800083bc:	ffac98e3          	bne	s9,s10,800083ac <__printf+0x284>
    800083c0:	00094503          	lbu	a0,0(s2)
    800083c4:	e00514e3          	bnez	a0,800081cc <__printf+0xa4>
    800083c8:	1a0c1663          	bnez	s8,80008574 <__printf+0x44c>
    800083cc:	08813083          	ld	ra,136(sp)
    800083d0:	08013403          	ld	s0,128(sp)
    800083d4:	07813483          	ld	s1,120(sp)
    800083d8:	07013903          	ld	s2,112(sp)
    800083dc:	06813983          	ld	s3,104(sp)
    800083e0:	06013a03          	ld	s4,96(sp)
    800083e4:	05813a83          	ld	s5,88(sp)
    800083e8:	05013b03          	ld	s6,80(sp)
    800083ec:	04813b83          	ld	s7,72(sp)
    800083f0:	04013c03          	ld	s8,64(sp)
    800083f4:	03813c83          	ld	s9,56(sp)
    800083f8:	03013d03          	ld	s10,48(sp)
    800083fc:	02813d83          	ld	s11,40(sp)
    80008400:	0d010113          	addi	sp,sp,208
    80008404:	00008067          	ret
    80008408:	07300713          	li	a4,115
    8000840c:	1ce78a63          	beq	a5,a4,800085e0 <__printf+0x4b8>
    80008410:	07800713          	li	a4,120
    80008414:	1ee79e63          	bne	a5,a4,80008610 <__printf+0x4e8>
    80008418:	f7843783          	ld	a5,-136(s0)
    8000841c:	0007a703          	lw	a4,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	f6f43c23          	sd	a5,-136(s0)
    80008428:	28074263          	bltz	a4,800086ac <__printf+0x584>
    8000842c:	00002d97          	auipc	s11,0x2
    80008430:	624d8d93          	addi	s11,s11,1572 # 8000aa50 <digits>
    80008434:	00f77793          	andi	a5,a4,15
    80008438:	00fd87b3          	add	a5,s11,a5
    8000843c:	0007c683          	lbu	a3,0(a5)
    80008440:	00f00613          	li	a2,15
    80008444:	0007079b          	sext.w	a5,a4
    80008448:	f8d40023          	sb	a3,-128(s0)
    8000844c:	0047559b          	srliw	a1,a4,0x4
    80008450:	0047569b          	srliw	a3,a4,0x4
    80008454:	00000c93          	li	s9,0
    80008458:	0ee65063          	bge	a2,a4,80008538 <__printf+0x410>
    8000845c:	00f6f693          	andi	a3,a3,15
    80008460:	00dd86b3          	add	a3,s11,a3
    80008464:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008468:	0087d79b          	srliw	a5,a5,0x8
    8000846c:	00100c93          	li	s9,1
    80008470:	f8d400a3          	sb	a3,-127(s0)
    80008474:	0cb67263          	bgeu	a2,a1,80008538 <__printf+0x410>
    80008478:	00f7f693          	andi	a3,a5,15
    8000847c:	00dd86b3          	add	a3,s11,a3
    80008480:	0006c583          	lbu	a1,0(a3)
    80008484:	00f00613          	li	a2,15
    80008488:	0047d69b          	srliw	a3,a5,0x4
    8000848c:	f8b40123          	sb	a1,-126(s0)
    80008490:	0047d593          	srli	a1,a5,0x4
    80008494:	28f67e63          	bgeu	a2,a5,80008730 <__printf+0x608>
    80008498:	00f6f693          	andi	a3,a3,15
    8000849c:	00dd86b3          	add	a3,s11,a3
    800084a0:	0006c503          	lbu	a0,0(a3)
    800084a4:	0087d813          	srli	a6,a5,0x8
    800084a8:	0087d69b          	srliw	a3,a5,0x8
    800084ac:	f8a401a3          	sb	a0,-125(s0)
    800084b0:	28b67663          	bgeu	a2,a1,8000873c <__printf+0x614>
    800084b4:	00f6f693          	andi	a3,a3,15
    800084b8:	00dd86b3          	add	a3,s11,a3
    800084bc:	0006c583          	lbu	a1,0(a3)
    800084c0:	00c7d513          	srli	a0,a5,0xc
    800084c4:	00c7d69b          	srliw	a3,a5,0xc
    800084c8:	f8b40223          	sb	a1,-124(s0)
    800084cc:	29067a63          	bgeu	a2,a6,80008760 <__printf+0x638>
    800084d0:	00f6f693          	andi	a3,a3,15
    800084d4:	00dd86b3          	add	a3,s11,a3
    800084d8:	0006c583          	lbu	a1,0(a3)
    800084dc:	0107d813          	srli	a6,a5,0x10
    800084e0:	0107d69b          	srliw	a3,a5,0x10
    800084e4:	f8b402a3          	sb	a1,-123(s0)
    800084e8:	28a67263          	bgeu	a2,a0,8000876c <__printf+0x644>
    800084ec:	00f6f693          	andi	a3,a3,15
    800084f0:	00dd86b3          	add	a3,s11,a3
    800084f4:	0006c683          	lbu	a3,0(a3)
    800084f8:	0147d79b          	srliw	a5,a5,0x14
    800084fc:	f8d40323          	sb	a3,-122(s0)
    80008500:	21067663          	bgeu	a2,a6,8000870c <__printf+0x5e4>
    80008504:	02079793          	slli	a5,a5,0x20
    80008508:	0207d793          	srli	a5,a5,0x20
    8000850c:	00fd8db3          	add	s11,s11,a5
    80008510:	000dc683          	lbu	a3,0(s11)
    80008514:	00800793          	li	a5,8
    80008518:	00700c93          	li	s9,7
    8000851c:	f8d403a3          	sb	a3,-121(s0)
    80008520:	00075c63          	bgez	a4,80008538 <__printf+0x410>
    80008524:	f9040713          	addi	a4,s0,-112
    80008528:	00f70733          	add	a4,a4,a5
    8000852c:	02d00693          	li	a3,45
    80008530:	fed70823          	sb	a3,-16(a4)
    80008534:	00078c93          	mv	s9,a5
    80008538:	f8040793          	addi	a5,s0,-128
    8000853c:	01978cb3          	add	s9,a5,s9
    80008540:	f7f40d13          	addi	s10,s0,-129
    80008544:	000cc503          	lbu	a0,0(s9)
    80008548:	fffc8c93          	addi	s9,s9,-1
    8000854c:	00000097          	auipc	ra,0x0
    80008550:	9f8080e7          	jalr	-1544(ra) # 80007f44 <consputc>
    80008554:	ff9d18e3          	bne	s10,s9,80008544 <__printf+0x41c>
    80008558:	0100006f          	j	80008568 <__printf+0x440>
    8000855c:	00000097          	auipc	ra,0x0
    80008560:	9e8080e7          	jalr	-1560(ra) # 80007f44 <consputc>
    80008564:	000c8493          	mv	s1,s9
    80008568:	00094503          	lbu	a0,0(s2)
    8000856c:	c60510e3          	bnez	a0,800081cc <__printf+0xa4>
    80008570:	e40c0ee3          	beqz	s8,800083cc <__printf+0x2a4>
    80008574:	00006517          	auipc	a0,0x6
    80008578:	c0c50513          	addi	a0,a0,-1012 # 8000e180 <pr>
    8000857c:	00001097          	auipc	ra,0x1
    80008580:	94c080e7          	jalr	-1716(ra) # 80008ec8 <release>
    80008584:	e49ff06f          	j	800083cc <__printf+0x2a4>
    80008588:	f7843783          	ld	a5,-136(s0)
    8000858c:	03000513          	li	a0,48
    80008590:	01000d13          	li	s10,16
    80008594:	00878713          	addi	a4,a5,8
    80008598:	0007bc83          	ld	s9,0(a5)
    8000859c:	f6e43c23          	sd	a4,-136(s0)
    800085a0:	00000097          	auipc	ra,0x0
    800085a4:	9a4080e7          	jalr	-1628(ra) # 80007f44 <consputc>
    800085a8:	07800513          	li	a0,120
    800085ac:	00000097          	auipc	ra,0x0
    800085b0:	998080e7          	jalr	-1640(ra) # 80007f44 <consputc>
    800085b4:	00002d97          	auipc	s11,0x2
    800085b8:	49cd8d93          	addi	s11,s11,1180 # 8000aa50 <digits>
    800085bc:	03ccd793          	srli	a5,s9,0x3c
    800085c0:	00fd87b3          	add	a5,s11,a5
    800085c4:	0007c503          	lbu	a0,0(a5)
    800085c8:	fffd0d1b          	addiw	s10,s10,-1
    800085cc:	004c9c93          	slli	s9,s9,0x4
    800085d0:	00000097          	auipc	ra,0x0
    800085d4:	974080e7          	jalr	-1676(ra) # 80007f44 <consputc>
    800085d8:	fe0d12e3          	bnez	s10,800085bc <__printf+0x494>
    800085dc:	f8dff06f          	j	80008568 <__printf+0x440>
    800085e0:	f7843783          	ld	a5,-136(s0)
    800085e4:	0007bc83          	ld	s9,0(a5)
    800085e8:	00878793          	addi	a5,a5,8
    800085ec:	f6f43c23          	sd	a5,-136(s0)
    800085f0:	000c9a63          	bnez	s9,80008604 <__printf+0x4dc>
    800085f4:	1080006f          	j	800086fc <__printf+0x5d4>
    800085f8:	001c8c93          	addi	s9,s9,1
    800085fc:	00000097          	auipc	ra,0x0
    80008600:	948080e7          	jalr	-1720(ra) # 80007f44 <consputc>
    80008604:	000cc503          	lbu	a0,0(s9)
    80008608:	fe0518e3          	bnez	a0,800085f8 <__printf+0x4d0>
    8000860c:	f5dff06f          	j	80008568 <__printf+0x440>
    80008610:	02500513          	li	a0,37
    80008614:	00000097          	auipc	ra,0x0
    80008618:	930080e7          	jalr	-1744(ra) # 80007f44 <consputc>
    8000861c:	000c8513          	mv	a0,s9
    80008620:	00000097          	auipc	ra,0x0
    80008624:	924080e7          	jalr	-1756(ra) # 80007f44 <consputc>
    80008628:	f41ff06f          	j	80008568 <__printf+0x440>
    8000862c:	02500513          	li	a0,37
    80008630:	00000097          	auipc	ra,0x0
    80008634:	914080e7          	jalr	-1772(ra) # 80007f44 <consputc>
    80008638:	f31ff06f          	j	80008568 <__printf+0x440>
    8000863c:	00030513          	mv	a0,t1
    80008640:	00000097          	auipc	ra,0x0
    80008644:	7bc080e7          	jalr	1980(ra) # 80008dfc <acquire>
    80008648:	b4dff06f          	j	80008194 <__printf+0x6c>
    8000864c:	40c0053b          	negw	a0,a2
    80008650:	00a00713          	li	a4,10
    80008654:	02e576bb          	remuw	a3,a0,a4
    80008658:	00002d97          	auipc	s11,0x2
    8000865c:	3f8d8d93          	addi	s11,s11,1016 # 8000aa50 <digits>
    80008660:	ff700593          	li	a1,-9
    80008664:	02069693          	slli	a3,a3,0x20
    80008668:	0206d693          	srli	a3,a3,0x20
    8000866c:	00dd86b3          	add	a3,s11,a3
    80008670:	0006c683          	lbu	a3,0(a3)
    80008674:	02e557bb          	divuw	a5,a0,a4
    80008678:	f8d40023          	sb	a3,-128(s0)
    8000867c:	10b65e63          	bge	a2,a1,80008798 <__printf+0x670>
    80008680:	06300593          	li	a1,99
    80008684:	02e7f6bb          	remuw	a3,a5,a4
    80008688:	02069693          	slli	a3,a3,0x20
    8000868c:	0206d693          	srli	a3,a3,0x20
    80008690:	00dd86b3          	add	a3,s11,a3
    80008694:	0006c683          	lbu	a3,0(a3)
    80008698:	02e7d73b          	divuw	a4,a5,a4
    8000869c:	00200793          	li	a5,2
    800086a0:	f8d400a3          	sb	a3,-127(s0)
    800086a4:	bca5ece3          	bltu	a1,a0,8000827c <__printf+0x154>
    800086a8:	ce5ff06f          	j	8000838c <__printf+0x264>
    800086ac:	40e007bb          	negw	a5,a4
    800086b0:	00002d97          	auipc	s11,0x2
    800086b4:	3a0d8d93          	addi	s11,s11,928 # 8000aa50 <digits>
    800086b8:	00f7f693          	andi	a3,a5,15
    800086bc:	00dd86b3          	add	a3,s11,a3
    800086c0:	0006c583          	lbu	a1,0(a3)
    800086c4:	ff100613          	li	a2,-15
    800086c8:	0047d69b          	srliw	a3,a5,0x4
    800086cc:	f8b40023          	sb	a1,-128(s0)
    800086d0:	0047d59b          	srliw	a1,a5,0x4
    800086d4:	0ac75e63          	bge	a4,a2,80008790 <__printf+0x668>
    800086d8:	00f6f693          	andi	a3,a3,15
    800086dc:	00dd86b3          	add	a3,s11,a3
    800086e0:	0006c603          	lbu	a2,0(a3)
    800086e4:	00f00693          	li	a3,15
    800086e8:	0087d79b          	srliw	a5,a5,0x8
    800086ec:	f8c400a3          	sb	a2,-127(s0)
    800086f0:	d8b6e4e3          	bltu	a3,a1,80008478 <__printf+0x350>
    800086f4:	00200793          	li	a5,2
    800086f8:	e2dff06f          	j	80008524 <__printf+0x3fc>
    800086fc:	00002c97          	auipc	s9,0x2
    80008700:	334c8c93          	addi	s9,s9,820 # 8000aa30 <_ZZ13SprintIntegermE6digits+0x5c8>
    80008704:	02800513          	li	a0,40
    80008708:	ef1ff06f          	j	800085f8 <__printf+0x4d0>
    8000870c:	00700793          	li	a5,7
    80008710:	00600c93          	li	s9,6
    80008714:	e0dff06f          	j	80008520 <__printf+0x3f8>
    80008718:	00700793          	li	a5,7
    8000871c:	00600c93          	li	s9,6
    80008720:	c69ff06f          	j	80008388 <__printf+0x260>
    80008724:	00300793          	li	a5,3
    80008728:	00200c93          	li	s9,2
    8000872c:	c5dff06f          	j	80008388 <__printf+0x260>
    80008730:	00300793          	li	a5,3
    80008734:	00200c93          	li	s9,2
    80008738:	de9ff06f          	j	80008520 <__printf+0x3f8>
    8000873c:	00400793          	li	a5,4
    80008740:	00300c93          	li	s9,3
    80008744:	dddff06f          	j	80008520 <__printf+0x3f8>
    80008748:	00400793          	li	a5,4
    8000874c:	00300c93          	li	s9,3
    80008750:	c39ff06f          	j	80008388 <__printf+0x260>
    80008754:	00500793          	li	a5,5
    80008758:	00400c93          	li	s9,4
    8000875c:	c2dff06f          	j	80008388 <__printf+0x260>
    80008760:	00500793          	li	a5,5
    80008764:	00400c93          	li	s9,4
    80008768:	db9ff06f          	j	80008520 <__printf+0x3f8>
    8000876c:	00600793          	li	a5,6
    80008770:	00500c93          	li	s9,5
    80008774:	dadff06f          	j	80008520 <__printf+0x3f8>
    80008778:	00600793          	li	a5,6
    8000877c:	00500c93          	li	s9,5
    80008780:	c09ff06f          	j	80008388 <__printf+0x260>
    80008784:	00800793          	li	a5,8
    80008788:	00700c93          	li	s9,7
    8000878c:	bfdff06f          	j	80008388 <__printf+0x260>
    80008790:	00100793          	li	a5,1
    80008794:	d91ff06f          	j	80008524 <__printf+0x3fc>
    80008798:	00100793          	li	a5,1
    8000879c:	bf1ff06f          	j	8000838c <__printf+0x264>
    800087a0:	00900793          	li	a5,9
    800087a4:	00800c93          	li	s9,8
    800087a8:	be1ff06f          	j	80008388 <__printf+0x260>
    800087ac:	00002517          	auipc	a0,0x2
    800087b0:	28c50513          	addi	a0,a0,652 # 8000aa38 <_ZZ13SprintIntegermE6digits+0x5d0>
    800087b4:	00000097          	auipc	ra,0x0
    800087b8:	918080e7          	jalr	-1768(ra) # 800080cc <panic>

00000000800087bc <printfinit>:
    800087bc:	fe010113          	addi	sp,sp,-32
    800087c0:	00813823          	sd	s0,16(sp)
    800087c4:	00913423          	sd	s1,8(sp)
    800087c8:	00113c23          	sd	ra,24(sp)
    800087cc:	02010413          	addi	s0,sp,32
    800087d0:	00006497          	auipc	s1,0x6
    800087d4:	9b048493          	addi	s1,s1,-1616 # 8000e180 <pr>
    800087d8:	00048513          	mv	a0,s1
    800087dc:	00002597          	auipc	a1,0x2
    800087e0:	26c58593          	addi	a1,a1,620 # 8000aa48 <_ZZ13SprintIntegermE6digits+0x5e0>
    800087e4:	00000097          	auipc	ra,0x0
    800087e8:	5f4080e7          	jalr	1524(ra) # 80008dd8 <initlock>
    800087ec:	01813083          	ld	ra,24(sp)
    800087f0:	01013403          	ld	s0,16(sp)
    800087f4:	0004ac23          	sw	zero,24(s1)
    800087f8:	00813483          	ld	s1,8(sp)
    800087fc:	02010113          	addi	sp,sp,32
    80008800:	00008067          	ret

0000000080008804 <uartinit>:
    80008804:	ff010113          	addi	sp,sp,-16
    80008808:	00813423          	sd	s0,8(sp)
    8000880c:	01010413          	addi	s0,sp,16
    80008810:	100007b7          	lui	a5,0x10000
    80008814:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008818:	f8000713          	li	a4,-128
    8000881c:	00e781a3          	sb	a4,3(a5)
    80008820:	00300713          	li	a4,3
    80008824:	00e78023          	sb	a4,0(a5)
    80008828:	000780a3          	sb	zero,1(a5)
    8000882c:	00e781a3          	sb	a4,3(a5)
    80008830:	00700693          	li	a3,7
    80008834:	00d78123          	sb	a3,2(a5)
    80008838:	00e780a3          	sb	a4,1(a5)
    8000883c:	00813403          	ld	s0,8(sp)
    80008840:	01010113          	addi	sp,sp,16
    80008844:	00008067          	ret

0000000080008848 <uartputc>:
    80008848:	00004797          	auipc	a5,0x4
    8000884c:	6307a783          	lw	a5,1584(a5) # 8000ce78 <panicked>
    80008850:	00078463          	beqz	a5,80008858 <uartputc+0x10>
    80008854:	0000006f          	j	80008854 <uartputc+0xc>
    80008858:	fd010113          	addi	sp,sp,-48
    8000885c:	02813023          	sd	s0,32(sp)
    80008860:	00913c23          	sd	s1,24(sp)
    80008864:	01213823          	sd	s2,16(sp)
    80008868:	01313423          	sd	s3,8(sp)
    8000886c:	02113423          	sd	ra,40(sp)
    80008870:	03010413          	addi	s0,sp,48
    80008874:	00004917          	auipc	s2,0x4
    80008878:	60c90913          	addi	s2,s2,1548 # 8000ce80 <uart_tx_r>
    8000887c:	00093783          	ld	a5,0(s2)
    80008880:	00004497          	auipc	s1,0x4
    80008884:	60848493          	addi	s1,s1,1544 # 8000ce88 <uart_tx_w>
    80008888:	0004b703          	ld	a4,0(s1)
    8000888c:	02078693          	addi	a3,a5,32
    80008890:	00050993          	mv	s3,a0
    80008894:	02e69c63          	bne	a3,a4,800088cc <uartputc+0x84>
    80008898:	00001097          	auipc	ra,0x1
    8000889c:	834080e7          	jalr	-1996(ra) # 800090cc <push_on>
    800088a0:	00093783          	ld	a5,0(s2)
    800088a4:	0004b703          	ld	a4,0(s1)
    800088a8:	02078793          	addi	a5,a5,32
    800088ac:	00e79463          	bne	a5,a4,800088b4 <uartputc+0x6c>
    800088b0:	0000006f          	j	800088b0 <uartputc+0x68>
    800088b4:	00001097          	auipc	ra,0x1
    800088b8:	88c080e7          	jalr	-1908(ra) # 80009140 <pop_on>
    800088bc:	00093783          	ld	a5,0(s2)
    800088c0:	0004b703          	ld	a4,0(s1)
    800088c4:	02078693          	addi	a3,a5,32
    800088c8:	fce688e3          	beq	a3,a4,80008898 <uartputc+0x50>
    800088cc:	01f77693          	andi	a3,a4,31
    800088d0:	00006597          	auipc	a1,0x6
    800088d4:	8d058593          	addi	a1,a1,-1840 # 8000e1a0 <uart_tx_buf>
    800088d8:	00d586b3          	add	a3,a1,a3
    800088dc:	00170713          	addi	a4,a4,1
    800088e0:	01368023          	sb	s3,0(a3)
    800088e4:	00e4b023          	sd	a4,0(s1)
    800088e8:	10000637          	lui	a2,0x10000
    800088ec:	02f71063          	bne	a4,a5,8000890c <uartputc+0xc4>
    800088f0:	0340006f          	j	80008924 <uartputc+0xdc>
    800088f4:	00074703          	lbu	a4,0(a4)
    800088f8:	00f93023          	sd	a5,0(s2)
    800088fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008900:	00093783          	ld	a5,0(s2)
    80008904:	0004b703          	ld	a4,0(s1)
    80008908:	00f70e63          	beq	a4,a5,80008924 <uartputc+0xdc>
    8000890c:	00564683          	lbu	a3,5(a2)
    80008910:	01f7f713          	andi	a4,a5,31
    80008914:	00e58733          	add	a4,a1,a4
    80008918:	0206f693          	andi	a3,a3,32
    8000891c:	00178793          	addi	a5,a5,1
    80008920:	fc069ae3          	bnez	a3,800088f4 <uartputc+0xac>
    80008924:	02813083          	ld	ra,40(sp)
    80008928:	02013403          	ld	s0,32(sp)
    8000892c:	01813483          	ld	s1,24(sp)
    80008930:	01013903          	ld	s2,16(sp)
    80008934:	00813983          	ld	s3,8(sp)
    80008938:	03010113          	addi	sp,sp,48
    8000893c:	00008067          	ret

0000000080008940 <uartputc_sync>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813423          	sd	s0,8(sp)
    80008948:	01010413          	addi	s0,sp,16
    8000894c:	00004717          	auipc	a4,0x4
    80008950:	52c72703          	lw	a4,1324(a4) # 8000ce78 <panicked>
    80008954:	02071663          	bnez	a4,80008980 <uartputc_sync+0x40>
    80008958:	00050793          	mv	a5,a0
    8000895c:	100006b7          	lui	a3,0x10000
    80008960:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008964:	02077713          	andi	a4,a4,32
    80008968:	fe070ce3          	beqz	a4,80008960 <uartputc_sync+0x20>
    8000896c:	0ff7f793          	andi	a5,a5,255
    80008970:	00f68023          	sb	a5,0(a3)
    80008974:	00813403          	ld	s0,8(sp)
    80008978:	01010113          	addi	sp,sp,16
    8000897c:	00008067          	ret
    80008980:	0000006f          	j	80008980 <uartputc_sync+0x40>

0000000080008984 <uartstart>:
    80008984:	ff010113          	addi	sp,sp,-16
    80008988:	00813423          	sd	s0,8(sp)
    8000898c:	01010413          	addi	s0,sp,16
    80008990:	00004617          	auipc	a2,0x4
    80008994:	4f060613          	addi	a2,a2,1264 # 8000ce80 <uart_tx_r>
    80008998:	00004517          	auipc	a0,0x4
    8000899c:	4f050513          	addi	a0,a0,1264 # 8000ce88 <uart_tx_w>
    800089a0:	00063783          	ld	a5,0(a2)
    800089a4:	00053703          	ld	a4,0(a0)
    800089a8:	04f70263          	beq	a4,a5,800089ec <uartstart+0x68>
    800089ac:	100005b7          	lui	a1,0x10000
    800089b0:	00005817          	auipc	a6,0x5
    800089b4:	7f080813          	addi	a6,a6,2032 # 8000e1a0 <uart_tx_buf>
    800089b8:	01c0006f          	j	800089d4 <uartstart+0x50>
    800089bc:	0006c703          	lbu	a4,0(a3)
    800089c0:	00f63023          	sd	a5,0(a2)
    800089c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800089c8:	00063783          	ld	a5,0(a2)
    800089cc:	00053703          	ld	a4,0(a0)
    800089d0:	00f70e63          	beq	a4,a5,800089ec <uartstart+0x68>
    800089d4:	01f7f713          	andi	a4,a5,31
    800089d8:	00e806b3          	add	a3,a6,a4
    800089dc:	0055c703          	lbu	a4,5(a1)
    800089e0:	00178793          	addi	a5,a5,1
    800089e4:	02077713          	andi	a4,a4,32
    800089e8:	fc071ae3          	bnez	a4,800089bc <uartstart+0x38>
    800089ec:	00813403          	ld	s0,8(sp)
    800089f0:	01010113          	addi	sp,sp,16
    800089f4:	00008067          	ret

00000000800089f8 <uartgetc>:
    800089f8:	ff010113          	addi	sp,sp,-16
    800089fc:	00813423          	sd	s0,8(sp)
    80008a00:	01010413          	addi	s0,sp,16
    80008a04:	10000737          	lui	a4,0x10000
    80008a08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008a0c:	0017f793          	andi	a5,a5,1
    80008a10:	00078c63          	beqz	a5,80008a28 <uartgetc+0x30>
    80008a14:	00074503          	lbu	a0,0(a4)
    80008a18:	0ff57513          	andi	a0,a0,255
    80008a1c:	00813403          	ld	s0,8(sp)
    80008a20:	01010113          	addi	sp,sp,16
    80008a24:	00008067          	ret
    80008a28:	fff00513          	li	a0,-1
    80008a2c:	ff1ff06f          	j	80008a1c <uartgetc+0x24>

0000000080008a30 <uartintr>:
    80008a30:	100007b7          	lui	a5,0x10000
    80008a34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008a38:	0017f793          	andi	a5,a5,1
    80008a3c:	0a078463          	beqz	a5,80008ae4 <uartintr+0xb4>
    80008a40:	fe010113          	addi	sp,sp,-32
    80008a44:	00813823          	sd	s0,16(sp)
    80008a48:	00913423          	sd	s1,8(sp)
    80008a4c:	00113c23          	sd	ra,24(sp)
    80008a50:	02010413          	addi	s0,sp,32
    80008a54:	100004b7          	lui	s1,0x10000
    80008a58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008a5c:	0ff57513          	andi	a0,a0,255
    80008a60:	fffff097          	auipc	ra,0xfffff
    80008a64:	534080e7          	jalr	1332(ra) # 80007f94 <consoleintr>
    80008a68:	0054c783          	lbu	a5,5(s1)
    80008a6c:	0017f793          	andi	a5,a5,1
    80008a70:	fe0794e3          	bnez	a5,80008a58 <uartintr+0x28>
    80008a74:	00004617          	auipc	a2,0x4
    80008a78:	40c60613          	addi	a2,a2,1036 # 8000ce80 <uart_tx_r>
    80008a7c:	00004517          	auipc	a0,0x4
    80008a80:	40c50513          	addi	a0,a0,1036 # 8000ce88 <uart_tx_w>
    80008a84:	00063783          	ld	a5,0(a2)
    80008a88:	00053703          	ld	a4,0(a0)
    80008a8c:	04f70263          	beq	a4,a5,80008ad0 <uartintr+0xa0>
    80008a90:	100005b7          	lui	a1,0x10000
    80008a94:	00005817          	auipc	a6,0x5
    80008a98:	70c80813          	addi	a6,a6,1804 # 8000e1a0 <uart_tx_buf>
    80008a9c:	01c0006f          	j	80008ab8 <uartintr+0x88>
    80008aa0:	0006c703          	lbu	a4,0(a3)
    80008aa4:	00f63023          	sd	a5,0(a2)
    80008aa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008aac:	00063783          	ld	a5,0(a2)
    80008ab0:	00053703          	ld	a4,0(a0)
    80008ab4:	00f70e63          	beq	a4,a5,80008ad0 <uartintr+0xa0>
    80008ab8:	01f7f713          	andi	a4,a5,31
    80008abc:	00e806b3          	add	a3,a6,a4
    80008ac0:	0055c703          	lbu	a4,5(a1)
    80008ac4:	00178793          	addi	a5,a5,1
    80008ac8:	02077713          	andi	a4,a4,32
    80008acc:	fc071ae3          	bnez	a4,80008aa0 <uartintr+0x70>
    80008ad0:	01813083          	ld	ra,24(sp)
    80008ad4:	01013403          	ld	s0,16(sp)
    80008ad8:	00813483          	ld	s1,8(sp)
    80008adc:	02010113          	addi	sp,sp,32
    80008ae0:	00008067          	ret
    80008ae4:	00004617          	auipc	a2,0x4
    80008ae8:	39c60613          	addi	a2,a2,924 # 8000ce80 <uart_tx_r>
    80008aec:	00004517          	auipc	a0,0x4
    80008af0:	39c50513          	addi	a0,a0,924 # 8000ce88 <uart_tx_w>
    80008af4:	00063783          	ld	a5,0(a2)
    80008af8:	00053703          	ld	a4,0(a0)
    80008afc:	04f70263          	beq	a4,a5,80008b40 <uartintr+0x110>
    80008b00:	100005b7          	lui	a1,0x10000
    80008b04:	00005817          	auipc	a6,0x5
    80008b08:	69c80813          	addi	a6,a6,1692 # 8000e1a0 <uart_tx_buf>
    80008b0c:	01c0006f          	j	80008b28 <uartintr+0xf8>
    80008b10:	0006c703          	lbu	a4,0(a3)
    80008b14:	00f63023          	sd	a5,0(a2)
    80008b18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008b1c:	00063783          	ld	a5,0(a2)
    80008b20:	00053703          	ld	a4,0(a0)
    80008b24:	02f70063          	beq	a4,a5,80008b44 <uartintr+0x114>
    80008b28:	01f7f713          	andi	a4,a5,31
    80008b2c:	00e806b3          	add	a3,a6,a4
    80008b30:	0055c703          	lbu	a4,5(a1)
    80008b34:	00178793          	addi	a5,a5,1
    80008b38:	02077713          	andi	a4,a4,32
    80008b3c:	fc071ae3          	bnez	a4,80008b10 <uartintr+0xe0>
    80008b40:	00008067          	ret
    80008b44:	00008067          	ret

0000000080008b48 <kinit>:
    80008b48:	fc010113          	addi	sp,sp,-64
    80008b4c:	02913423          	sd	s1,40(sp)
    80008b50:	fffff7b7          	lui	a5,0xfffff
    80008b54:	00006497          	auipc	s1,0x6
    80008b58:	67b48493          	addi	s1,s1,1659 # 8000f1cf <end+0xfff>
    80008b5c:	02813823          	sd	s0,48(sp)
    80008b60:	01313c23          	sd	s3,24(sp)
    80008b64:	00f4f4b3          	and	s1,s1,a5
    80008b68:	02113c23          	sd	ra,56(sp)
    80008b6c:	03213023          	sd	s2,32(sp)
    80008b70:	01413823          	sd	s4,16(sp)
    80008b74:	01513423          	sd	s5,8(sp)
    80008b78:	04010413          	addi	s0,sp,64
    80008b7c:	000017b7          	lui	a5,0x1
    80008b80:	01100993          	li	s3,17
    80008b84:	00f487b3          	add	a5,s1,a5
    80008b88:	01b99993          	slli	s3,s3,0x1b
    80008b8c:	06f9e063          	bltu	s3,a5,80008bec <kinit+0xa4>
    80008b90:	00005a97          	auipc	s5,0x5
    80008b94:	640a8a93          	addi	s5,s5,1600 # 8000e1d0 <end>
    80008b98:	0754ec63          	bltu	s1,s5,80008c10 <kinit+0xc8>
    80008b9c:	0734fa63          	bgeu	s1,s3,80008c10 <kinit+0xc8>
    80008ba0:	00088a37          	lui	s4,0x88
    80008ba4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008ba8:	00004917          	auipc	s2,0x4
    80008bac:	2e890913          	addi	s2,s2,744 # 8000ce90 <kmem>
    80008bb0:	00ca1a13          	slli	s4,s4,0xc
    80008bb4:	0140006f          	j	80008bc8 <kinit+0x80>
    80008bb8:	000017b7          	lui	a5,0x1
    80008bbc:	00f484b3          	add	s1,s1,a5
    80008bc0:	0554e863          	bltu	s1,s5,80008c10 <kinit+0xc8>
    80008bc4:	0534f663          	bgeu	s1,s3,80008c10 <kinit+0xc8>
    80008bc8:	00001637          	lui	a2,0x1
    80008bcc:	00100593          	li	a1,1
    80008bd0:	00048513          	mv	a0,s1
    80008bd4:	00000097          	auipc	ra,0x0
    80008bd8:	5e4080e7          	jalr	1508(ra) # 800091b8 <__memset>
    80008bdc:	00093783          	ld	a5,0(s2)
    80008be0:	00f4b023          	sd	a5,0(s1)
    80008be4:	00993023          	sd	s1,0(s2)
    80008be8:	fd4498e3          	bne	s1,s4,80008bb8 <kinit+0x70>
    80008bec:	03813083          	ld	ra,56(sp)
    80008bf0:	03013403          	ld	s0,48(sp)
    80008bf4:	02813483          	ld	s1,40(sp)
    80008bf8:	02013903          	ld	s2,32(sp)
    80008bfc:	01813983          	ld	s3,24(sp)
    80008c00:	01013a03          	ld	s4,16(sp)
    80008c04:	00813a83          	ld	s5,8(sp)
    80008c08:	04010113          	addi	sp,sp,64
    80008c0c:	00008067          	ret
    80008c10:	00002517          	auipc	a0,0x2
    80008c14:	e5850513          	addi	a0,a0,-424 # 8000aa68 <digits+0x18>
    80008c18:	fffff097          	auipc	ra,0xfffff
    80008c1c:	4b4080e7          	jalr	1204(ra) # 800080cc <panic>

0000000080008c20 <freerange>:
    80008c20:	fc010113          	addi	sp,sp,-64
    80008c24:	000017b7          	lui	a5,0x1
    80008c28:	02913423          	sd	s1,40(sp)
    80008c2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008c30:	009504b3          	add	s1,a0,s1
    80008c34:	fffff537          	lui	a0,0xfffff
    80008c38:	02813823          	sd	s0,48(sp)
    80008c3c:	02113c23          	sd	ra,56(sp)
    80008c40:	03213023          	sd	s2,32(sp)
    80008c44:	01313c23          	sd	s3,24(sp)
    80008c48:	01413823          	sd	s4,16(sp)
    80008c4c:	01513423          	sd	s5,8(sp)
    80008c50:	01613023          	sd	s6,0(sp)
    80008c54:	04010413          	addi	s0,sp,64
    80008c58:	00a4f4b3          	and	s1,s1,a0
    80008c5c:	00f487b3          	add	a5,s1,a5
    80008c60:	06f5e463          	bltu	a1,a5,80008cc8 <freerange+0xa8>
    80008c64:	00005a97          	auipc	s5,0x5
    80008c68:	56ca8a93          	addi	s5,s5,1388 # 8000e1d0 <end>
    80008c6c:	0954e263          	bltu	s1,s5,80008cf0 <freerange+0xd0>
    80008c70:	01100993          	li	s3,17
    80008c74:	01b99993          	slli	s3,s3,0x1b
    80008c78:	0734fc63          	bgeu	s1,s3,80008cf0 <freerange+0xd0>
    80008c7c:	00058a13          	mv	s4,a1
    80008c80:	00004917          	auipc	s2,0x4
    80008c84:	21090913          	addi	s2,s2,528 # 8000ce90 <kmem>
    80008c88:	00002b37          	lui	s6,0x2
    80008c8c:	0140006f          	j	80008ca0 <freerange+0x80>
    80008c90:	000017b7          	lui	a5,0x1
    80008c94:	00f484b3          	add	s1,s1,a5
    80008c98:	0554ec63          	bltu	s1,s5,80008cf0 <freerange+0xd0>
    80008c9c:	0534fa63          	bgeu	s1,s3,80008cf0 <freerange+0xd0>
    80008ca0:	00001637          	lui	a2,0x1
    80008ca4:	00100593          	li	a1,1
    80008ca8:	00048513          	mv	a0,s1
    80008cac:	00000097          	auipc	ra,0x0
    80008cb0:	50c080e7          	jalr	1292(ra) # 800091b8 <__memset>
    80008cb4:	00093703          	ld	a4,0(s2)
    80008cb8:	016487b3          	add	a5,s1,s6
    80008cbc:	00e4b023          	sd	a4,0(s1)
    80008cc0:	00993023          	sd	s1,0(s2)
    80008cc4:	fcfa76e3          	bgeu	s4,a5,80008c90 <freerange+0x70>
    80008cc8:	03813083          	ld	ra,56(sp)
    80008ccc:	03013403          	ld	s0,48(sp)
    80008cd0:	02813483          	ld	s1,40(sp)
    80008cd4:	02013903          	ld	s2,32(sp)
    80008cd8:	01813983          	ld	s3,24(sp)
    80008cdc:	01013a03          	ld	s4,16(sp)
    80008ce0:	00813a83          	ld	s5,8(sp)
    80008ce4:	00013b03          	ld	s6,0(sp)
    80008ce8:	04010113          	addi	sp,sp,64
    80008cec:	00008067          	ret
    80008cf0:	00002517          	auipc	a0,0x2
    80008cf4:	d7850513          	addi	a0,a0,-648 # 8000aa68 <digits+0x18>
    80008cf8:	fffff097          	auipc	ra,0xfffff
    80008cfc:	3d4080e7          	jalr	980(ra) # 800080cc <panic>

0000000080008d00 <kfree>:
    80008d00:	fe010113          	addi	sp,sp,-32
    80008d04:	00813823          	sd	s0,16(sp)
    80008d08:	00113c23          	sd	ra,24(sp)
    80008d0c:	00913423          	sd	s1,8(sp)
    80008d10:	02010413          	addi	s0,sp,32
    80008d14:	03451793          	slli	a5,a0,0x34
    80008d18:	04079c63          	bnez	a5,80008d70 <kfree+0x70>
    80008d1c:	00005797          	auipc	a5,0x5
    80008d20:	4b478793          	addi	a5,a5,1204 # 8000e1d0 <end>
    80008d24:	00050493          	mv	s1,a0
    80008d28:	04f56463          	bltu	a0,a5,80008d70 <kfree+0x70>
    80008d2c:	01100793          	li	a5,17
    80008d30:	01b79793          	slli	a5,a5,0x1b
    80008d34:	02f57e63          	bgeu	a0,a5,80008d70 <kfree+0x70>
    80008d38:	00001637          	lui	a2,0x1
    80008d3c:	00100593          	li	a1,1
    80008d40:	00000097          	auipc	ra,0x0
    80008d44:	478080e7          	jalr	1144(ra) # 800091b8 <__memset>
    80008d48:	00004797          	auipc	a5,0x4
    80008d4c:	14878793          	addi	a5,a5,328 # 8000ce90 <kmem>
    80008d50:	0007b703          	ld	a4,0(a5)
    80008d54:	01813083          	ld	ra,24(sp)
    80008d58:	01013403          	ld	s0,16(sp)
    80008d5c:	00e4b023          	sd	a4,0(s1)
    80008d60:	0097b023          	sd	s1,0(a5)
    80008d64:	00813483          	ld	s1,8(sp)
    80008d68:	02010113          	addi	sp,sp,32
    80008d6c:	00008067          	ret
    80008d70:	00002517          	auipc	a0,0x2
    80008d74:	cf850513          	addi	a0,a0,-776 # 8000aa68 <digits+0x18>
    80008d78:	fffff097          	auipc	ra,0xfffff
    80008d7c:	354080e7          	jalr	852(ra) # 800080cc <panic>

0000000080008d80 <kalloc>:
    80008d80:	fe010113          	addi	sp,sp,-32
    80008d84:	00813823          	sd	s0,16(sp)
    80008d88:	00913423          	sd	s1,8(sp)
    80008d8c:	00113c23          	sd	ra,24(sp)
    80008d90:	02010413          	addi	s0,sp,32
    80008d94:	00004797          	auipc	a5,0x4
    80008d98:	0fc78793          	addi	a5,a5,252 # 8000ce90 <kmem>
    80008d9c:	0007b483          	ld	s1,0(a5)
    80008da0:	02048063          	beqz	s1,80008dc0 <kalloc+0x40>
    80008da4:	0004b703          	ld	a4,0(s1)
    80008da8:	00001637          	lui	a2,0x1
    80008dac:	00500593          	li	a1,5
    80008db0:	00048513          	mv	a0,s1
    80008db4:	00e7b023          	sd	a4,0(a5)
    80008db8:	00000097          	auipc	ra,0x0
    80008dbc:	400080e7          	jalr	1024(ra) # 800091b8 <__memset>
    80008dc0:	01813083          	ld	ra,24(sp)
    80008dc4:	01013403          	ld	s0,16(sp)
    80008dc8:	00048513          	mv	a0,s1
    80008dcc:	00813483          	ld	s1,8(sp)
    80008dd0:	02010113          	addi	sp,sp,32
    80008dd4:	00008067          	ret

0000000080008dd8 <initlock>:
    80008dd8:	ff010113          	addi	sp,sp,-16
    80008ddc:	00813423          	sd	s0,8(sp)
    80008de0:	01010413          	addi	s0,sp,16
    80008de4:	00813403          	ld	s0,8(sp)
    80008de8:	00b53423          	sd	a1,8(a0)
    80008dec:	00052023          	sw	zero,0(a0)
    80008df0:	00053823          	sd	zero,16(a0)
    80008df4:	01010113          	addi	sp,sp,16
    80008df8:	00008067          	ret

0000000080008dfc <acquire>:
    80008dfc:	fe010113          	addi	sp,sp,-32
    80008e00:	00813823          	sd	s0,16(sp)
    80008e04:	00913423          	sd	s1,8(sp)
    80008e08:	00113c23          	sd	ra,24(sp)
    80008e0c:	01213023          	sd	s2,0(sp)
    80008e10:	02010413          	addi	s0,sp,32
    80008e14:	00050493          	mv	s1,a0
    80008e18:	10002973          	csrr	s2,sstatus
    80008e1c:	100027f3          	csrr	a5,sstatus
    80008e20:	ffd7f793          	andi	a5,a5,-3
    80008e24:	10079073          	csrw	sstatus,a5
    80008e28:	fffff097          	auipc	ra,0xfffff
    80008e2c:	8e8080e7          	jalr	-1816(ra) # 80007710 <mycpu>
    80008e30:	07852783          	lw	a5,120(a0)
    80008e34:	06078e63          	beqz	a5,80008eb0 <acquire+0xb4>
    80008e38:	fffff097          	auipc	ra,0xfffff
    80008e3c:	8d8080e7          	jalr	-1832(ra) # 80007710 <mycpu>
    80008e40:	07852783          	lw	a5,120(a0)
    80008e44:	0004a703          	lw	a4,0(s1)
    80008e48:	0017879b          	addiw	a5,a5,1
    80008e4c:	06f52c23          	sw	a5,120(a0)
    80008e50:	04071063          	bnez	a4,80008e90 <acquire+0x94>
    80008e54:	00100713          	li	a4,1
    80008e58:	00070793          	mv	a5,a4
    80008e5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008e60:	0007879b          	sext.w	a5,a5
    80008e64:	fe079ae3          	bnez	a5,80008e58 <acquire+0x5c>
    80008e68:	0ff0000f          	fence
    80008e6c:	fffff097          	auipc	ra,0xfffff
    80008e70:	8a4080e7          	jalr	-1884(ra) # 80007710 <mycpu>
    80008e74:	01813083          	ld	ra,24(sp)
    80008e78:	01013403          	ld	s0,16(sp)
    80008e7c:	00a4b823          	sd	a0,16(s1)
    80008e80:	00013903          	ld	s2,0(sp)
    80008e84:	00813483          	ld	s1,8(sp)
    80008e88:	02010113          	addi	sp,sp,32
    80008e8c:	00008067          	ret
    80008e90:	0104b903          	ld	s2,16(s1)
    80008e94:	fffff097          	auipc	ra,0xfffff
    80008e98:	87c080e7          	jalr	-1924(ra) # 80007710 <mycpu>
    80008e9c:	faa91ce3          	bne	s2,a0,80008e54 <acquire+0x58>
    80008ea0:	00002517          	auipc	a0,0x2
    80008ea4:	bd050513          	addi	a0,a0,-1072 # 8000aa70 <digits+0x20>
    80008ea8:	fffff097          	auipc	ra,0xfffff
    80008eac:	224080e7          	jalr	548(ra) # 800080cc <panic>
    80008eb0:	00195913          	srli	s2,s2,0x1
    80008eb4:	fffff097          	auipc	ra,0xfffff
    80008eb8:	85c080e7          	jalr	-1956(ra) # 80007710 <mycpu>
    80008ebc:	00197913          	andi	s2,s2,1
    80008ec0:	07252e23          	sw	s2,124(a0)
    80008ec4:	f75ff06f          	j	80008e38 <acquire+0x3c>

0000000080008ec8 <release>:
    80008ec8:	fe010113          	addi	sp,sp,-32
    80008ecc:	00813823          	sd	s0,16(sp)
    80008ed0:	00113c23          	sd	ra,24(sp)
    80008ed4:	00913423          	sd	s1,8(sp)
    80008ed8:	01213023          	sd	s2,0(sp)
    80008edc:	02010413          	addi	s0,sp,32
    80008ee0:	00052783          	lw	a5,0(a0)
    80008ee4:	00079a63          	bnez	a5,80008ef8 <release+0x30>
    80008ee8:	00002517          	auipc	a0,0x2
    80008eec:	b9050513          	addi	a0,a0,-1136 # 8000aa78 <digits+0x28>
    80008ef0:	fffff097          	auipc	ra,0xfffff
    80008ef4:	1dc080e7          	jalr	476(ra) # 800080cc <panic>
    80008ef8:	01053903          	ld	s2,16(a0)
    80008efc:	00050493          	mv	s1,a0
    80008f00:	fffff097          	auipc	ra,0xfffff
    80008f04:	810080e7          	jalr	-2032(ra) # 80007710 <mycpu>
    80008f08:	fea910e3          	bne	s2,a0,80008ee8 <release+0x20>
    80008f0c:	0004b823          	sd	zero,16(s1)
    80008f10:	0ff0000f          	fence
    80008f14:	0f50000f          	fence	iorw,ow
    80008f18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008f1c:	ffffe097          	auipc	ra,0xffffe
    80008f20:	7f4080e7          	jalr	2036(ra) # 80007710 <mycpu>
    80008f24:	100027f3          	csrr	a5,sstatus
    80008f28:	0027f793          	andi	a5,a5,2
    80008f2c:	04079a63          	bnez	a5,80008f80 <release+0xb8>
    80008f30:	07852783          	lw	a5,120(a0)
    80008f34:	02f05e63          	blez	a5,80008f70 <release+0xa8>
    80008f38:	fff7871b          	addiw	a4,a5,-1
    80008f3c:	06e52c23          	sw	a4,120(a0)
    80008f40:	00071c63          	bnez	a4,80008f58 <release+0x90>
    80008f44:	07c52783          	lw	a5,124(a0)
    80008f48:	00078863          	beqz	a5,80008f58 <release+0x90>
    80008f4c:	100027f3          	csrr	a5,sstatus
    80008f50:	0027e793          	ori	a5,a5,2
    80008f54:	10079073          	csrw	sstatus,a5
    80008f58:	01813083          	ld	ra,24(sp)
    80008f5c:	01013403          	ld	s0,16(sp)
    80008f60:	00813483          	ld	s1,8(sp)
    80008f64:	00013903          	ld	s2,0(sp)
    80008f68:	02010113          	addi	sp,sp,32
    80008f6c:	00008067          	ret
    80008f70:	00002517          	auipc	a0,0x2
    80008f74:	b2850513          	addi	a0,a0,-1240 # 8000aa98 <digits+0x48>
    80008f78:	fffff097          	auipc	ra,0xfffff
    80008f7c:	154080e7          	jalr	340(ra) # 800080cc <panic>
    80008f80:	00002517          	auipc	a0,0x2
    80008f84:	b0050513          	addi	a0,a0,-1280 # 8000aa80 <digits+0x30>
    80008f88:	fffff097          	auipc	ra,0xfffff
    80008f8c:	144080e7          	jalr	324(ra) # 800080cc <panic>

0000000080008f90 <holding>:
    80008f90:	00052783          	lw	a5,0(a0)
    80008f94:	00079663          	bnez	a5,80008fa0 <holding+0x10>
    80008f98:	00000513          	li	a0,0
    80008f9c:	00008067          	ret
    80008fa0:	fe010113          	addi	sp,sp,-32
    80008fa4:	00813823          	sd	s0,16(sp)
    80008fa8:	00913423          	sd	s1,8(sp)
    80008fac:	00113c23          	sd	ra,24(sp)
    80008fb0:	02010413          	addi	s0,sp,32
    80008fb4:	01053483          	ld	s1,16(a0)
    80008fb8:	ffffe097          	auipc	ra,0xffffe
    80008fbc:	758080e7          	jalr	1880(ra) # 80007710 <mycpu>
    80008fc0:	01813083          	ld	ra,24(sp)
    80008fc4:	01013403          	ld	s0,16(sp)
    80008fc8:	40a48533          	sub	a0,s1,a0
    80008fcc:	00153513          	seqz	a0,a0
    80008fd0:	00813483          	ld	s1,8(sp)
    80008fd4:	02010113          	addi	sp,sp,32
    80008fd8:	00008067          	ret

0000000080008fdc <push_off>:
    80008fdc:	fe010113          	addi	sp,sp,-32
    80008fe0:	00813823          	sd	s0,16(sp)
    80008fe4:	00113c23          	sd	ra,24(sp)
    80008fe8:	00913423          	sd	s1,8(sp)
    80008fec:	02010413          	addi	s0,sp,32
    80008ff0:	100024f3          	csrr	s1,sstatus
    80008ff4:	100027f3          	csrr	a5,sstatus
    80008ff8:	ffd7f793          	andi	a5,a5,-3
    80008ffc:	10079073          	csrw	sstatus,a5
    80009000:	ffffe097          	auipc	ra,0xffffe
    80009004:	710080e7          	jalr	1808(ra) # 80007710 <mycpu>
    80009008:	07852783          	lw	a5,120(a0)
    8000900c:	02078663          	beqz	a5,80009038 <push_off+0x5c>
    80009010:	ffffe097          	auipc	ra,0xffffe
    80009014:	700080e7          	jalr	1792(ra) # 80007710 <mycpu>
    80009018:	07852783          	lw	a5,120(a0)
    8000901c:	01813083          	ld	ra,24(sp)
    80009020:	01013403          	ld	s0,16(sp)
    80009024:	0017879b          	addiw	a5,a5,1
    80009028:	06f52c23          	sw	a5,120(a0)
    8000902c:	00813483          	ld	s1,8(sp)
    80009030:	02010113          	addi	sp,sp,32
    80009034:	00008067          	ret
    80009038:	0014d493          	srli	s1,s1,0x1
    8000903c:	ffffe097          	auipc	ra,0xffffe
    80009040:	6d4080e7          	jalr	1748(ra) # 80007710 <mycpu>
    80009044:	0014f493          	andi	s1,s1,1
    80009048:	06952e23          	sw	s1,124(a0)
    8000904c:	fc5ff06f          	j	80009010 <push_off+0x34>

0000000080009050 <pop_off>:
    80009050:	ff010113          	addi	sp,sp,-16
    80009054:	00813023          	sd	s0,0(sp)
    80009058:	00113423          	sd	ra,8(sp)
    8000905c:	01010413          	addi	s0,sp,16
    80009060:	ffffe097          	auipc	ra,0xffffe
    80009064:	6b0080e7          	jalr	1712(ra) # 80007710 <mycpu>
    80009068:	100027f3          	csrr	a5,sstatus
    8000906c:	0027f793          	andi	a5,a5,2
    80009070:	04079663          	bnez	a5,800090bc <pop_off+0x6c>
    80009074:	07852783          	lw	a5,120(a0)
    80009078:	02f05a63          	blez	a5,800090ac <pop_off+0x5c>
    8000907c:	fff7871b          	addiw	a4,a5,-1
    80009080:	06e52c23          	sw	a4,120(a0)
    80009084:	00071c63          	bnez	a4,8000909c <pop_off+0x4c>
    80009088:	07c52783          	lw	a5,124(a0)
    8000908c:	00078863          	beqz	a5,8000909c <pop_off+0x4c>
    80009090:	100027f3          	csrr	a5,sstatus
    80009094:	0027e793          	ori	a5,a5,2
    80009098:	10079073          	csrw	sstatus,a5
    8000909c:	00813083          	ld	ra,8(sp)
    800090a0:	00013403          	ld	s0,0(sp)
    800090a4:	01010113          	addi	sp,sp,16
    800090a8:	00008067          	ret
    800090ac:	00002517          	auipc	a0,0x2
    800090b0:	9ec50513          	addi	a0,a0,-1556 # 8000aa98 <digits+0x48>
    800090b4:	fffff097          	auipc	ra,0xfffff
    800090b8:	018080e7          	jalr	24(ra) # 800080cc <panic>
    800090bc:	00002517          	auipc	a0,0x2
    800090c0:	9c450513          	addi	a0,a0,-1596 # 8000aa80 <digits+0x30>
    800090c4:	fffff097          	auipc	ra,0xfffff
    800090c8:	008080e7          	jalr	8(ra) # 800080cc <panic>

00000000800090cc <push_on>:
    800090cc:	fe010113          	addi	sp,sp,-32
    800090d0:	00813823          	sd	s0,16(sp)
    800090d4:	00113c23          	sd	ra,24(sp)
    800090d8:	00913423          	sd	s1,8(sp)
    800090dc:	02010413          	addi	s0,sp,32
    800090e0:	100024f3          	csrr	s1,sstatus
    800090e4:	100027f3          	csrr	a5,sstatus
    800090e8:	0027e793          	ori	a5,a5,2
    800090ec:	10079073          	csrw	sstatus,a5
    800090f0:	ffffe097          	auipc	ra,0xffffe
    800090f4:	620080e7          	jalr	1568(ra) # 80007710 <mycpu>
    800090f8:	07852783          	lw	a5,120(a0)
    800090fc:	02078663          	beqz	a5,80009128 <push_on+0x5c>
    80009100:	ffffe097          	auipc	ra,0xffffe
    80009104:	610080e7          	jalr	1552(ra) # 80007710 <mycpu>
    80009108:	07852783          	lw	a5,120(a0)
    8000910c:	01813083          	ld	ra,24(sp)
    80009110:	01013403          	ld	s0,16(sp)
    80009114:	0017879b          	addiw	a5,a5,1
    80009118:	06f52c23          	sw	a5,120(a0)
    8000911c:	00813483          	ld	s1,8(sp)
    80009120:	02010113          	addi	sp,sp,32
    80009124:	00008067          	ret
    80009128:	0014d493          	srli	s1,s1,0x1
    8000912c:	ffffe097          	auipc	ra,0xffffe
    80009130:	5e4080e7          	jalr	1508(ra) # 80007710 <mycpu>
    80009134:	0014f493          	andi	s1,s1,1
    80009138:	06952e23          	sw	s1,124(a0)
    8000913c:	fc5ff06f          	j	80009100 <push_on+0x34>

0000000080009140 <pop_on>:
    80009140:	ff010113          	addi	sp,sp,-16
    80009144:	00813023          	sd	s0,0(sp)
    80009148:	00113423          	sd	ra,8(sp)
    8000914c:	01010413          	addi	s0,sp,16
    80009150:	ffffe097          	auipc	ra,0xffffe
    80009154:	5c0080e7          	jalr	1472(ra) # 80007710 <mycpu>
    80009158:	100027f3          	csrr	a5,sstatus
    8000915c:	0027f793          	andi	a5,a5,2
    80009160:	04078463          	beqz	a5,800091a8 <pop_on+0x68>
    80009164:	07852783          	lw	a5,120(a0)
    80009168:	02f05863          	blez	a5,80009198 <pop_on+0x58>
    8000916c:	fff7879b          	addiw	a5,a5,-1
    80009170:	06f52c23          	sw	a5,120(a0)
    80009174:	07853783          	ld	a5,120(a0)
    80009178:	00079863          	bnez	a5,80009188 <pop_on+0x48>
    8000917c:	100027f3          	csrr	a5,sstatus
    80009180:	ffd7f793          	andi	a5,a5,-3
    80009184:	10079073          	csrw	sstatus,a5
    80009188:	00813083          	ld	ra,8(sp)
    8000918c:	00013403          	ld	s0,0(sp)
    80009190:	01010113          	addi	sp,sp,16
    80009194:	00008067          	ret
    80009198:	00002517          	auipc	a0,0x2
    8000919c:	92850513          	addi	a0,a0,-1752 # 8000aac0 <digits+0x70>
    800091a0:	fffff097          	auipc	ra,0xfffff
    800091a4:	f2c080e7          	jalr	-212(ra) # 800080cc <panic>
    800091a8:	00002517          	auipc	a0,0x2
    800091ac:	8f850513          	addi	a0,a0,-1800 # 8000aaa0 <digits+0x50>
    800091b0:	fffff097          	auipc	ra,0xfffff
    800091b4:	f1c080e7          	jalr	-228(ra) # 800080cc <panic>

00000000800091b8 <__memset>:
    800091b8:	ff010113          	addi	sp,sp,-16
    800091bc:	00813423          	sd	s0,8(sp)
    800091c0:	01010413          	addi	s0,sp,16
    800091c4:	1a060e63          	beqz	a2,80009380 <__memset+0x1c8>
    800091c8:	40a007b3          	neg	a5,a0
    800091cc:	0077f793          	andi	a5,a5,7
    800091d0:	00778693          	addi	a3,a5,7
    800091d4:	00b00813          	li	a6,11
    800091d8:	0ff5f593          	andi	a1,a1,255
    800091dc:	fff6071b          	addiw	a4,a2,-1
    800091e0:	1b06e663          	bltu	a3,a6,8000938c <__memset+0x1d4>
    800091e4:	1cd76463          	bltu	a4,a3,800093ac <__memset+0x1f4>
    800091e8:	1a078e63          	beqz	a5,800093a4 <__memset+0x1ec>
    800091ec:	00b50023          	sb	a1,0(a0)
    800091f0:	00100713          	li	a4,1
    800091f4:	1ae78463          	beq	a5,a4,8000939c <__memset+0x1e4>
    800091f8:	00b500a3          	sb	a1,1(a0)
    800091fc:	00200713          	li	a4,2
    80009200:	1ae78a63          	beq	a5,a4,800093b4 <__memset+0x1fc>
    80009204:	00b50123          	sb	a1,2(a0)
    80009208:	00300713          	li	a4,3
    8000920c:	18e78463          	beq	a5,a4,80009394 <__memset+0x1dc>
    80009210:	00b501a3          	sb	a1,3(a0)
    80009214:	00400713          	li	a4,4
    80009218:	1ae78263          	beq	a5,a4,800093bc <__memset+0x204>
    8000921c:	00b50223          	sb	a1,4(a0)
    80009220:	00500713          	li	a4,5
    80009224:	1ae78063          	beq	a5,a4,800093c4 <__memset+0x20c>
    80009228:	00b502a3          	sb	a1,5(a0)
    8000922c:	00700713          	li	a4,7
    80009230:	18e79e63          	bne	a5,a4,800093cc <__memset+0x214>
    80009234:	00b50323          	sb	a1,6(a0)
    80009238:	00700e93          	li	t4,7
    8000923c:	00859713          	slli	a4,a1,0x8
    80009240:	00e5e733          	or	a4,a1,a4
    80009244:	01059e13          	slli	t3,a1,0x10
    80009248:	01c76e33          	or	t3,a4,t3
    8000924c:	01859313          	slli	t1,a1,0x18
    80009250:	006e6333          	or	t1,t3,t1
    80009254:	02059893          	slli	a7,a1,0x20
    80009258:	40f60e3b          	subw	t3,a2,a5
    8000925c:	011368b3          	or	a7,t1,a7
    80009260:	02859813          	slli	a6,a1,0x28
    80009264:	0108e833          	or	a6,a7,a6
    80009268:	03059693          	slli	a3,a1,0x30
    8000926c:	003e589b          	srliw	a7,t3,0x3
    80009270:	00d866b3          	or	a3,a6,a3
    80009274:	03859713          	slli	a4,a1,0x38
    80009278:	00389813          	slli	a6,a7,0x3
    8000927c:	00f507b3          	add	a5,a0,a5
    80009280:	00e6e733          	or	a4,a3,a4
    80009284:	000e089b          	sext.w	a7,t3
    80009288:	00f806b3          	add	a3,a6,a5
    8000928c:	00e7b023          	sd	a4,0(a5)
    80009290:	00878793          	addi	a5,a5,8
    80009294:	fed79ce3          	bne	a5,a3,8000928c <__memset+0xd4>
    80009298:	ff8e7793          	andi	a5,t3,-8
    8000929c:	0007871b          	sext.w	a4,a5
    800092a0:	01d787bb          	addw	a5,a5,t4
    800092a4:	0ce88e63          	beq	a7,a4,80009380 <__memset+0x1c8>
    800092a8:	00f50733          	add	a4,a0,a5
    800092ac:	00b70023          	sb	a1,0(a4)
    800092b0:	0017871b          	addiw	a4,a5,1
    800092b4:	0cc77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092b8:	00e50733          	add	a4,a0,a4
    800092bc:	00b70023          	sb	a1,0(a4)
    800092c0:	0027871b          	addiw	a4,a5,2
    800092c4:	0ac77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092c8:	00e50733          	add	a4,a0,a4
    800092cc:	00b70023          	sb	a1,0(a4)
    800092d0:	0037871b          	addiw	a4,a5,3
    800092d4:	0ac77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092d8:	00e50733          	add	a4,a0,a4
    800092dc:	00b70023          	sb	a1,0(a4)
    800092e0:	0047871b          	addiw	a4,a5,4
    800092e4:	08c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092e8:	00e50733          	add	a4,a0,a4
    800092ec:	00b70023          	sb	a1,0(a4)
    800092f0:	0057871b          	addiw	a4,a5,5
    800092f4:	08c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092f8:	00e50733          	add	a4,a0,a4
    800092fc:	00b70023          	sb	a1,0(a4)
    80009300:	0067871b          	addiw	a4,a5,6
    80009304:	06c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009308:	00e50733          	add	a4,a0,a4
    8000930c:	00b70023          	sb	a1,0(a4)
    80009310:	0077871b          	addiw	a4,a5,7
    80009314:	06c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009318:	00e50733          	add	a4,a0,a4
    8000931c:	00b70023          	sb	a1,0(a4)
    80009320:	0087871b          	addiw	a4,a5,8
    80009324:	04c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009328:	00e50733          	add	a4,a0,a4
    8000932c:	00b70023          	sb	a1,0(a4)
    80009330:	0097871b          	addiw	a4,a5,9
    80009334:	04c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009338:	00e50733          	add	a4,a0,a4
    8000933c:	00b70023          	sb	a1,0(a4)
    80009340:	00a7871b          	addiw	a4,a5,10
    80009344:	02c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009348:	00e50733          	add	a4,a0,a4
    8000934c:	00b70023          	sb	a1,0(a4)
    80009350:	00b7871b          	addiw	a4,a5,11
    80009354:	02c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009358:	00e50733          	add	a4,a0,a4
    8000935c:	00b70023          	sb	a1,0(a4)
    80009360:	00c7871b          	addiw	a4,a5,12
    80009364:	00c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009368:	00e50733          	add	a4,a0,a4
    8000936c:	00b70023          	sb	a1,0(a4)
    80009370:	00d7879b          	addiw	a5,a5,13
    80009374:	00c7f663          	bgeu	a5,a2,80009380 <__memset+0x1c8>
    80009378:	00f507b3          	add	a5,a0,a5
    8000937c:	00b78023          	sb	a1,0(a5)
    80009380:	00813403          	ld	s0,8(sp)
    80009384:	01010113          	addi	sp,sp,16
    80009388:	00008067          	ret
    8000938c:	00b00693          	li	a3,11
    80009390:	e55ff06f          	j	800091e4 <__memset+0x2c>
    80009394:	00300e93          	li	t4,3
    80009398:	ea5ff06f          	j	8000923c <__memset+0x84>
    8000939c:	00100e93          	li	t4,1
    800093a0:	e9dff06f          	j	8000923c <__memset+0x84>
    800093a4:	00000e93          	li	t4,0
    800093a8:	e95ff06f          	j	8000923c <__memset+0x84>
    800093ac:	00000793          	li	a5,0
    800093b0:	ef9ff06f          	j	800092a8 <__memset+0xf0>
    800093b4:	00200e93          	li	t4,2
    800093b8:	e85ff06f          	j	8000923c <__memset+0x84>
    800093bc:	00400e93          	li	t4,4
    800093c0:	e7dff06f          	j	8000923c <__memset+0x84>
    800093c4:	00500e93          	li	t4,5
    800093c8:	e75ff06f          	j	8000923c <__memset+0x84>
    800093cc:	00600e93          	li	t4,6
    800093d0:	e6dff06f          	j	8000923c <__memset+0x84>

00000000800093d4 <__memmove>:
    800093d4:	ff010113          	addi	sp,sp,-16
    800093d8:	00813423          	sd	s0,8(sp)
    800093dc:	01010413          	addi	s0,sp,16
    800093e0:	0e060863          	beqz	a2,800094d0 <__memmove+0xfc>
    800093e4:	fff6069b          	addiw	a3,a2,-1
    800093e8:	0006881b          	sext.w	a6,a3
    800093ec:	0ea5e863          	bltu	a1,a0,800094dc <__memmove+0x108>
    800093f0:	00758713          	addi	a4,a1,7
    800093f4:	00a5e7b3          	or	a5,a1,a0
    800093f8:	40a70733          	sub	a4,a4,a0
    800093fc:	0077f793          	andi	a5,a5,7
    80009400:	00f73713          	sltiu	a4,a4,15
    80009404:	00174713          	xori	a4,a4,1
    80009408:	0017b793          	seqz	a5,a5
    8000940c:	00e7f7b3          	and	a5,a5,a4
    80009410:	10078863          	beqz	a5,80009520 <__memmove+0x14c>
    80009414:	00900793          	li	a5,9
    80009418:	1107f463          	bgeu	a5,a6,80009520 <__memmove+0x14c>
    8000941c:	0036581b          	srliw	a6,a2,0x3
    80009420:	fff8081b          	addiw	a6,a6,-1
    80009424:	02081813          	slli	a6,a6,0x20
    80009428:	01d85893          	srli	a7,a6,0x1d
    8000942c:	00858813          	addi	a6,a1,8
    80009430:	00058793          	mv	a5,a1
    80009434:	00050713          	mv	a4,a0
    80009438:	01088833          	add	a6,a7,a6
    8000943c:	0007b883          	ld	a7,0(a5)
    80009440:	00878793          	addi	a5,a5,8
    80009444:	00870713          	addi	a4,a4,8
    80009448:	ff173c23          	sd	a7,-8(a4)
    8000944c:	ff0798e3          	bne	a5,a6,8000943c <__memmove+0x68>
    80009450:	ff867713          	andi	a4,a2,-8
    80009454:	02071793          	slli	a5,a4,0x20
    80009458:	0207d793          	srli	a5,a5,0x20
    8000945c:	00f585b3          	add	a1,a1,a5
    80009460:	40e686bb          	subw	a3,a3,a4
    80009464:	00f507b3          	add	a5,a0,a5
    80009468:	06e60463          	beq	a2,a4,800094d0 <__memmove+0xfc>
    8000946c:	0005c703          	lbu	a4,0(a1)
    80009470:	00e78023          	sb	a4,0(a5)
    80009474:	04068e63          	beqz	a3,800094d0 <__memmove+0xfc>
    80009478:	0015c603          	lbu	a2,1(a1)
    8000947c:	00100713          	li	a4,1
    80009480:	00c780a3          	sb	a2,1(a5)
    80009484:	04e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    80009488:	0025c603          	lbu	a2,2(a1)
    8000948c:	00200713          	li	a4,2
    80009490:	00c78123          	sb	a2,2(a5)
    80009494:	02e68e63          	beq	a3,a4,800094d0 <__memmove+0xfc>
    80009498:	0035c603          	lbu	a2,3(a1)
    8000949c:	00300713          	li	a4,3
    800094a0:	00c781a3          	sb	a2,3(a5)
    800094a4:	02e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094a8:	0045c603          	lbu	a2,4(a1)
    800094ac:	00400713          	li	a4,4
    800094b0:	00c78223          	sb	a2,4(a5)
    800094b4:	00e68e63          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094b8:	0055c603          	lbu	a2,5(a1)
    800094bc:	00500713          	li	a4,5
    800094c0:	00c782a3          	sb	a2,5(a5)
    800094c4:	00e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094c8:	0065c703          	lbu	a4,6(a1)
    800094cc:	00e78323          	sb	a4,6(a5)
    800094d0:	00813403          	ld	s0,8(sp)
    800094d4:	01010113          	addi	sp,sp,16
    800094d8:	00008067          	ret
    800094dc:	02061713          	slli	a4,a2,0x20
    800094e0:	02075713          	srli	a4,a4,0x20
    800094e4:	00e587b3          	add	a5,a1,a4
    800094e8:	f0f574e3          	bgeu	a0,a5,800093f0 <__memmove+0x1c>
    800094ec:	02069613          	slli	a2,a3,0x20
    800094f0:	02065613          	srli	a2,a2,0x20
    800094f4:	fff64613          	not	a2,a2
    800094f8:	00e50733          	add	a4,a0,a4
    800094fc:	00c78633          	add	a2,a5,a2
    80009500:	fff7c683          	lbu	a3,-1(a5)
    80009504:	fff78793          	addi	a5,a5,-1
    80009508:	fff70713          	addi	a4,a4,-1
    8000950c:	00d70023          	sb	a3,0(a4)
    80009510:	fec798e3          	bne	a5,a2,80009500 <__memmove+0x12c>
    80009514:	00813403          	ld	s0,8(sp)
    80009518:	01010113          	addi	sp,sp,16
    8000951c:	00008067          	ret
    80009520:	02069713          	slli	a4,a3,0x20
    80009524:	02075713          	srli	a4,a4,0x20
    80009528:	00170713          	addi	a4,a4,1
    8000952c:	00e50733          	add	a4,a0,a4
    80009530:	00050793          	mv	a5,a0
    80009534:	0005c683          	lbu	a3,0(a1)
    80009538:	00178793          	addi	a5,a5,1
    8000953c:	00158593          	addi	a1,a1,1
    80009540:	fed78fa3          	sb	a3,-1(a5)
    80009544:	fee798e3          	bne	a5,a4,80009534 <__memmove+0x160>
    80009548:	f89ff06f          	j	800094d0 <__memmove+0xfc>

000000008000954c <__mem_free>:
    8000954c:	ff010113          	addi	sp,sp,-16
    80009550:	00813423          	sd	s0,8(sp)
    80009554:	01010413          	addi	s0,sp,16
    80009558:	00004597          	auipc	a1,0x4
    8000955c:	94058593          	addi	a1,a1,-1728 # 8000ce98 <freep>
    80009560:	0005b783          	ld	a5,0(a1)
    80009564:	ff050693          	addi	a3,a0,-16
    80009568:	0007b703          	ld	a4,0(a5)
    8000956c:	00d7fc63          	bgeu	a5,a3,80009584 <__mem_free+0x38>
    80009570:	00e6ee63          	bltu	a3,a4,8000958c <__mem_free+0x40>
    80009574:	00e7fc63          	bgeu	a5,a4,8000958c <__mem_free+0x40>
    80009578:	00070793          	mv	a5,a4
    8000957c:	0007b703          	ld	a4,0(a5)
    80009580:	fed7e8e3          	bltu	a5,a3,80009570 <__mem_free+0x24>
    80009584:	fee7eae3          	bltu	a5,a4,80009578 <__mem_free+0x2c>
    80009588:	fee6f8e3          	bgeu	a3,a4,80009578 <__mem_free+0x2c>
    8000958c:	ff852803          	lw	a6,-8(a0)
    80009590:	02081613          	slli	a2,a6,0x20
    80009594:	01c65613          	srli	a2,a2,0x1c
    80009598:	00c68633          	add	a2,a3,a2
    8000959c:	02c70a63          	beq	a4,a2,800095d0 <__mem_free+0x84>
    800095a0:	fee53823          	sd	a4,-16(a0)
    800095a4:	0087a503          	lw	a0,8(a5)
    800095a8:	02051613          	slli	a2,a0,0x20
    800095ac:	01c65613          	srli	a2,a2,0x1c
    800095b0:	00c78633          	add	a2,a5,a2
    800095b4:	04c68263          	beq	a3,a2,800095f8 <__mem_free+0xac>
    800095b8:	00813403          	ld	s0,8(sp)
    800095bc:	00d7b023          	sd	a3,0(a5)
    800095c0:	00f5b023          	sd	a5,0(a1)
    800095c4:	00000513          	li	a0,0
    800095c8:	01010113          	addi	sp,sp,16
    800095cc:	00008067          	ret
    800095d0:	00872603          	lw	a2,8(a4)
    800095d4:	00073703          	ld	a4,0(a4)
    800095d8:	0106083b          	addw	a6,a2,a6
    800095dc:	ff052c23          	sw	a6,-8(a0)
    800095e0:	fee53823          	sd	a4,-16(a0)
    800095e4:	0087a503          	lw	a0,8(a5)
    800095e8:	02051613          	slli	a2,a0,0x20
    800095ec:	01c65613          	srli	a2,a2,0x1c
    800095f0:	00c78633          	add	a2,a5,a2
    800095f4:	fcc692e3          	bne	a3,a2,800095b8 <__mem_free+0x6c>
    800095f8:	00813403          	ld	s0,8(sp)
    800095fc:	0105053b          	addw	a0,a0,a6
    80009600:	00a7a423          	sw	a0,8(a5)
    80009604:	00e7b023          	sd	a4,0(a5)
    80009608:	00f5b023          	sd	a5,0(a1)
    8000960c:	00000513          	li	a0,0
    80009610:	01010113          	addi	sp,sp,16
    80009614:	00008067          	ret

0000000080009618 <__mem_alloc>:
    80009618:	fc010113          	addi	sp,sp,-64
    8000961c:	02813823          	sd	s0,48(sp)
    80009620:	02913423          	sd	s1,40(sp)
    80009624:	03213023          	sd	s2,32(sp)
    80009628:	01513423          	sd	s5,8(sp)
    8000962c:	02113c23          	sd	ra,56(sp)
    80009630:	01313c23          	sd	s3,24(sp)
    80009634:	01413823          	sd	s4,16(sp)
    80009638:	01613023          	sd	s6,0(sp)
    8000963c:	04010413          	addi	s0,sp,64
    80009640:	00004a97          	auipc	s5,0x4
    80009644:	858a8a93          	addi	s5,s5,-1960 # 8000ce98 <freep>
    80009648:	00f50913          	addi	s2,a0,15
    8000964c:	000ab683          	ld	a3,0(s5)
    80009650:	00495913          	srli	s2,s2,0x4
    80009654:	0019049b          	addiw	s1,s2,1
    80009658:	00048913          	mv	s2,s1
    8000965c:	0c068c63          	beqz	a3,80009734 <__mem_alloc+0x11c>
    80009660:	0006b503          	ld	a0,0(a3)
    80009664:	00852703          	lw	a4,8(a0)
    80009668:	10977063          	bgeu	a4,s1,80009768 <__mem_alloc+0x150>
    8000966c:	000017b7          	lui	a5,0x1
    80009670:	0009099b          	sext.w	s3,s2
    80009674:	0af4e863          	bltu	s1,a5,80009724 <__mem_alloc+0x10c>
    80009678:	02099a13          	slli	s4,s3,0x20
    8000967c:	01ca5a13          	srli	s4,s4,0x1c
    80009680:	fff00b13          	li	s6,-1
    80009684:	0100006f          	j	80009694 <__mem_alloc+0x7c>
    80009688:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000968c:	00852703          	lw	a4,8(a0)
    80009690:	04977463          	bgeu	a4,s1,800096d8 <__mem_alloc+0xc0>
    80009694:	00050793          	mv	a5,a0
    80009698:	fea698e3          	bne	a3,a0,80009688 <__mem_alloc+0x70>
    8000969c:	000a0513          	mv	a0,s4
    800096a0:	00000097          	auipc	ra,0x0
    800096a4:	1f0080e7          	jalr	496(ra) # 80009890 <kvmincrease>
    800096a8:	00050793          	mv	a5,a0
    800096ac:	01050513          	addi	a0,a0,16
    800096b0:	07678e63          	beq	a5,s6,8000972c <__mem_alloc+0x114>
    800096b4:	0137a423          	sw	s3,8(a5)
    800096b8:	00000097          	auipc	ra,0x0
    800096bc:	e94080e7          	jalr	-364(ra) # 8000954c <__mem_free>
    800096c0:	000ab783          	ld	a5,0(s5)
    800096c4:	06078463          	beqz	a5,8000972c <__mem_alloc+0x114>
    800096c8:	0007b503          	ld	a0,0(a5)
    800096cc:	00078693          	mv	a3,a5
    800096d0:	00852703          	lw	a4,8(a0)
    800096d4:	fc9760e3          	bltu	a4,s1,80009694 <__mem_alloc+0x7c>
    800096d8:	08e48263          	beq	s1,a4,8000975c <__mem_alloc+0x144>
    800096dc:	4127073b          	subw	a4,a4,s2
    800096e0:	02071693          	slli	a3,a4,0x20
    800096e4:	01c6d693          	srli	a3,a3,0x1c
    800096e8:	00e52423          	sw	a4,8(a0)
    800096ec:	00d50533          	add	a0,a0,a3
    800096f0:	01252423          	sw	s2,8(a0)
    800096f4:	00fab023          	sd	a5,0(s5)
    800096f8:	01050513          	addi	a0,a0,16
    800096fc:	03813083          	ld	ra,56(sp)
    80009700:	03013403          	ld	s0,48(sp)
    80009704:	02813483          	ld	s1,40(sp)
    80009708:	02013903          	ld	s2,32(sp)
    8000970c:	01813983          	ld	s3,24(sp)
    80009710:	01013a03          	ld	s4,16(sp)
    80009714:	00813a83          	ld	s5,8(sp)
    80009718:	00013b03          	ld	s6,0(sp)
    8000971c:	04010113          	addi	sp,sp,64
    80009720:	00008067          	ret
    80009724:	000019b7          	lui	s3,0x1
    80009728:	f51ff06f          	j	80009678 <__mem_alloc+0x60>
    8000972c:	00000513          	li	a0,0
    80009730:	fcdff06f          	j	800096fc <__mem_alloc+0xe4>
    80009734:	00005797          	auipc	a5,0x5
    80009738:	a8c78793          	addi	a5,a5,-1396 # 8000e1c0 <base>
    8000973c:	00078513          	mv	a0,a5
    80009740:	00fab023          	sd	a5,0(s5)
    80009744:	00f7b023          	sd	a5,0(a5)
    80009748:	00000713          	li	a4,0
    8000974c:	00005797          	auipc	a5,0x5
    80009750:	a607ae23          	sw	zero,-1412(a5) # 8000e1c8 <base+0x8>
    80009754:	00050693          	mv	a3,a0
    80009758:	f11ff06f          	j	80009668 <__mem_alloc+0x50>
    8000975c:	00053703          	ld	a4,0(a0)
    80009760:	00e7b023          	sd	a4,0(a5)
    80009764:	f91ff06f          	j	800096f4 <__mem_alloc+0xdc>
    80009768:	00068793          	mv	a5,a3
    8000976c:	f6dff06f          	j	800096d8 <__mem_alloc+0xc0>

0000000080009770 <__putc>:
    80009770:	fe010113          	addi	sp,sp,-32
    80009774:	00813823          	sd	s0,16(sp)
    80009778:	00113c23          	sd	ra,24(sp)
    8000977c:	02010413          	addi	s0,sp,32
    80009780:	00050793          	mv	a5,a0
    80009784:	fef40593          	addi	a1,s0,-17
    80009788:	00100613          	li	a2,1
    8000978c:	00000513          	li	a0,0
    80009790:	fef407a3          	sb	a5,-17(s0)
    80009794:	fffff097          	auipc	ra,0xfffff
    80009798:	918080e7          	jalr	-1768(ra) # 800080ac <console_write>
    8000979c:	01813083          	ld	ra,24(sp)
    800097a0:	01013403          	ld	s0,16(sp)
    800097a4:	02010113          	addi	sp,sp,32
    800097a8:	00008067          	ret

00000000800097ac <__getc>:
    800097ac:	fe010113          	addi	sp,sp,-32
    800097b0:	00813823          	sd	s0,16(sp)
    800097b4:	00113c23          	sd	ra,24(sp)
    800097b8:	02010413          	addi	s0,sp,32
    800097bc:	fe840593          	addi	a1,s0,-24
    800097c0:	00100613          	li	a2,1
    800097c4:	00000513          	li	a0,0
    800097c8:	fffff097          	auipc	ra,0xfffff
    800097cc:	8c4080e7          	jalr	-1852(ra) # 8000808c <console_read>
    800097d0:	fe844503          	lbu	a0,-24(s0)
    800097d4:	01813083          	ld	ra,24(sp)
    800097d8:	01013403          	ld	s0,16(sp)
    800097dc:	02010113          	addi	sp,sp,32
    800097e0:	00008067          	ret

00000000800097e4 <console_handler>:
    800097e4:	fe010113          	addi	sp,sp,-32
    800097e8:	00813823          	sd	s0,16(sp)
    800097ec:	00113c23          	sd	ra,24(sp)
    800097f0:	00913423          	sd	s1,8(sp)
    800097f4:	02010413          	addi	s0,sp,32
    800097f8:	14202773          	csrr	a4,scause
    800097fc:	100027f3          	csrr	a5,sstatus
    80009800:	0027f793          	andi	a5,a5,2
    80009804:	06079e63          	bnez	a5,80009880 <console_handler+0x9c>
    80009808:	00074c63          	bltz	a4,80009820 <console_handler+0x3c>
    8000980c:	01813083          	ld	ra,24(sp)
    80009810:	01013403          	ld	s0,16(sp)
    80009814:	00813483          	ld	s1,8(sp)
    80009818:	02010113          	addi	sp,sp,32
    8000981c:	00008067          	ret
    80009820:	0ff77713          	andi	a4,a4,255
    80009824:	00900793          	li	a5,9
    80009828:	fef712e3          	bne	a4,a5,8000980c <console_handler+0x28>
    8000982c:	ffffe097          	auipc	ra,0xffffe
    80009830:	4b8080e7          	jalr	1208(ra) # 80007ce4 <plic_claim>
    80009834:	00a00793          	li	a5,10
    80009838:	00050493          	mv	s1,a0
    8000983c:	02f50c63          	beq	a0,a5,80009874 <console_handler+0x90>
    80009840:	fc0506e3          	beqz	a0,8000980c <console_handler+0x28>
    80009844:	00050593          	mv	a1,a0
    80009848:	00001517          	auipc	a0,0x1
    8000984c:	18050513          	addi	a0,a0,384 # 8000a9c8 <_ZZ13SprintIntegermE6digits+0x560>
    80009850:	fffff097          	auipc	ra,0xfffff
    80009854:	8d8080e7          	jalr	-1832(ra) # 80008128 <__printf>
    80009858:	01013403          	ld	s0,16(sp)
    8000985c:	01813083          	ld	ra,24(sp)
    80009860:	00048513          	mv	a0,s1
    80009864:	00813483          	ld	s1,8(sp)
    80009868:	02010113          	addi	sp,sp,32
    8000986c:	ffffe317          	auipc	t1,0xffffe
    80009870:	4b030067          	jr	1200(t1) # 80007d1c <plic_complete>
    80009874:	fffff097          	auipc	ra,0xfffff
    80009878:	1bc080e7          	jalr	444(ra) # 80008a30 <uartintr>
    8000987c:	fddff06f          	j	80009858 <console_handler+0x74>
    80009880:	00001517          	auipc	a0,0x1
    80009884:	24850513          	addi	a0,a0,584 # 8000aac8 <digits+0x78>
    80009888:	fffff097          	auipc	ra,0xfffff
    8000988c:	844080e7          	jalr	-1980(ra) # 800080cc <panic>

0000000080009890 <kvmincrease>:
    80009890:	fe010113          	addi	sp,sp,-32
    80009894:	01213023          	sd	s2,0(sp)
    80009898:	00001937          	lui	s2,0x1
    8000989c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800098a0:	00813823          	sd	s0,16(sp)
    800098a4:	00113c23          	sd	ra,24(sp)
    800098a8:	00913423          	sd	s1,8(sp)
    800098ac:	02010413          	addi	s0,sp,32
    800098b0:	01250933          	add	s2,a0,s2
    800098b4:	00c95913          	srli	s2,s2,0xc
    800098b8:	02090863          	beqz	s2,800098e8 <kvmincrease+0x58>
    800098bc:	00000493          	li	s1,0
    800098c0:	00148493          	addi	s1,s1,1
    800098c4:	fffff097          	auipc	ra,0xfffff
    800098c8:	4bc080e7          	jalr	1212(ra) # 80008d80 <kalloc>
    800098cc:	fe991ae3          	bne	s2,s1,800098c0 <kvmincrease+0x30>
    800098d0:	01813083          	ld	ra,24(sp)
    800098d4:	01013403          	ld	s0,16(sp)
    800098d8:	00813483          	ld	s1,8(sp)
    800098dc:	00013903          	ld	s2,0(sp)
    800098e0:	02010113          	addi	sp,sp,32
    800098e4:	00008067          	ret
    800098e8:	01813083          	ld	ra,24(sp)
    800098ec:	01013403          	ld	s0,16(sp)
    800098f0:	00813483          	ld	s1,8(sp)
    800098f4:	00013903          	ld	s2,0(sp)
    800098f8:	00000513          	li	a0,0
    800098fc:	02010113          	addi	sp,sp,32
    80009900:	00008067          	ret
	...
