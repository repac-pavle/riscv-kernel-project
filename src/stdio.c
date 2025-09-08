#include "../h/types.h"
#include "../h/console.h"
#include "../h/stdio.h"

size_t strlen(const char *s)
{
	if (s == NULL)
		return 0;

	char *p = (char *)s;
	while (*p)
		p++;
	return (size_t)(p - s);
}

uint64_t stoi(const char *s)
{
	uint64_t num = 0;
	size_t n = strlen(s);

	size_t i;
	for (i = 0; i < n; i++) {
		num *= 10;
		num += (uint64_t)(s[i] - '0');
	}

	return num;
}

void strrev(char *s)
{
	size_t n = strlen(s);
	char a[100];
	size_t i;
	for (i = 0; i < n; i++) {
		a[i] = s[n - 1 - i];
	}
	for (i = 0; i < n; i++) {
		s[i] = a[i];
	}
}

void itos(uint64_t num, char *s)
{
	if (num == 0) {
		s[0] = '0';
		s[1] = '\0';
		return;
	}

	size_t i;
	for (i = 0; num; num /= 10, i++) {
		s[i] = (char)('0' + num % 10);
	}
	s[i] = '\0';
	strrev(s);
}

void itoh(uint64_t num, char *s)
{
	if (num == 0) {
		s[0] = '0';
		s[1] = '\0';
		return;
	}

	size_t i;
	for (i = 0; num; num /= 16, i++) {
		if (num % 16 < 10)
			s[i] = (char)('0' + num % 16);
		else
			s[i] = (char)('a' + num % 16 - 10);
	}
	s[i] = '\0';
	strrev(s);
}

void memcpy(const void *destptr, const void *srcptr, size_t n)
{
	if (destptr == NULL || srcptr == NULL)
		return;

	uint8_t *dest = (uint8_t *)destptr;
	const uint8_t *src = (const uint8_t *)srcptr;

	size_t i;
	for (i = 0; i < n; i++) {
		dest[i] = src[i];
	}
}

void memset(const void *destptr, uint8_t value, size_t n)
{
	uint8_t *dest = (uint8_t *)destptr;
	size_t i;
	for (i = 0; i < n; i++) {
		dest[i] = value;
	}
}

int32_t memcmp(const void *aptr, const void *bptr)
{
	const uint8_t *a = (const uint8_t *)aptr;
	const uint8_t *b = (const uint8_t *)bptr;

	const size_t len_a = strlen((char *)a);
	const size_t len_b = strlen((char *)b);
	size_t i;
	for (i = 0; i < len_a && i < len_b; i++) {
		if (a[i] != b[i])
			return a[i] - b[i];
	}

	if (len_a < len_b) {
		return -1;
	}
	if (len_a > len_b) {
		return 1;
	}
	return 0;
}

void print_char(char c)
{
	__putc(c);
}

void print_string(const char *s)
{
	size_t i;
	for (i = 0; i < strlen(s); i++) {
		print_char(s[i]);
	}
}

void print_int(uint64_t num)
{
	char a[100];
	itos(num, a);
	print_string(a);
}

void print_hex(uint64_t num)
{
	char a[100];
	itoh(num, a);
	print_string(a);
}

void vprintf(const char *s, va_list list)
{
	size_t count = 0;
	size_t i;
	for (i = 0; i < strlen(s); i++)
		if (s[i] == '%')
			count++;

	for (i = 0; i < strlen(s); i++) {
		if (s[i] == '%') {
			i++;
			if (s[i] == 'c')
				print_char((char)va_arg(list, uint32_t));
			else if (s[i] == 's')
				print_string(va_arg(list, char *));
			else if (s[i] == 'd')
				print_int((uint64_t)va_arg(list, uint64_t));
			else if (s[i] == 'x')
				print_hex((uint64_t)va_arg(list, uint64_t));
			else {
				print_string("Wrong format using printf\n");
				return;
			}
		} else
			print_char(s[i]);
	}
}

void printf(const char *s, ...)
{
	va_list list;
	va_start(list, s);

	vprintf(s, list);

	va_end(list);
}
