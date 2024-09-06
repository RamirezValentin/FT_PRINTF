#include "ft_printf.h"

int ft_putnbr(int n)
{
	int i;

	i = 0;

	if(n == -2147483648)
	{
		i += ft_putstr("-2147483648");
		return i;
	}
	if(n < 0)
	{
		i += ft_putchar('-');
		n = n * -1;
	}
	if(n >= 10)
	{
		i += ft_putnbr(n/10);
		i += ft_putchar(n % 10 + '0');
	} else
		i += ft_putchar(n + '0');
	return i;
}