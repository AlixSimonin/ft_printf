NAME = libftprintf.a
OBJS = ${SRCS:.c=.o}
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
BLUE = \033[0;94m
MAGENTA = \033[0;95m

SRCS = ft_printf.c \
		ft_print_percent.c \
		ft_print_char.c \
		ft_print_hexa.c \
		ft_print_nbr.c \
		ft_print_void.c \
		ft_print_str.c \
		ft_print_unsigned.c \
		libft/ft_itoa.c \
		libft/ft_putstr.c \
		libft/ft_strlen.c \

all: ${NAME}

${NAME}: ${OBJS}
	@$(AR) ${NAME} ${OBJS}
	@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"
.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	${RM} ${OBJS}
	@echo "$(MAGENTA)ft_printf object files cleaned!$(DEF_COLOR)"

fclean: clean
	${RM} ${NAME}
	@echo "$(BLUE)ft_printf executable files cleaned!$(DEF_COLOR)"

re: fclean all

.PHONY:	all clean fclean re 
