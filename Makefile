NAME = libftprintf.a

SRCS = ft_printf.c ft_conversions.c ft_putchar.c ft_puthex.c ft_putnbr.c ft_putstr.c ft_putunsigned.c ft_putptr.c

OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean: 
	rm -rf $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re