# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: drtaili <drtaili@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/16 23:14:00 by drtaili           #+#    #+#              #
#    Updated: 2022/11/19 03:04:14 by drtaili          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC    =\
ft_atoi.c\
ft_bzero.c\
ft_calloc.c\
ft_isalnum.c\
ft_isalpha.c\
ft_isascii.c\
ft_isdigit.c\
ft_isprint.c\
ft_itoa.c\
ft_lstadd_back_bonus.c\
ft_lstadd_front_bonus.c\
ft_lstclear_bonus.c\
ft_lstdelone_bonus.c\
ft_lstiter_bonus.c\
ft_lstlast_bonus.c\
ft_lstmap_bonus.c\
ft_lstnew_bonus.c\
ft_lstsize_bonus.c\
ft_memchr.c\
ft_memcmp.c\
ft_memcpy.c\
ft_memmove.c\
ft_memset.c\
ft_putchar_fd.c\
ft_putendl_fd.c\
ft_putnbr_fd.c\
ft_putstr_fd.c\
ft_split.c\
ft_strchr.c\
ft_strdup.c\
ft_striteri.c\
ft_strjoin.c\
ft_strlcat.c\
ft_strlcpy.c\
ft_strlen.c\
ft_strmapi.c\
ft_strncmp.c\
ft_strnstr.c\
ft_strrchr.c\
ft_strtrim.c\
ft_substr.c\
ft_tolower.c\
ft_toupper.c

SRC_B = $(SRC)\
ft_lstadd_back_bonus.c\
ft_lstadd_front_bonus.c\
ft_lstclear_bonus.c\
ft_lstdelone_bonus.c\
ft_lstiter_bonus.c\
ft_lstlast_bonus.c\
ft_lstmap_bonus.c\
ft_lstnew_bonus.c\
ft_lstsize_bonus.c
    
OBJ_B = $(SRC_B:.c=.o)

OBJS = $(SRC:.c=.o)

CC = cc

RM = rm -rf

FLAGS = -Wall -Wextra -Werror

NAME = libft.a

all: $(NAME)

%.o : %.c libft.h
	$(CC) $(FLAGS) -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJ_B)

fclean: clean
	$(RM) $(NAME)

bonus: $(OBJ_B)
	ar rcs $(NAME) $(OBJ_B)


re: fclean $(NAME)

.PHONY = all clean fclean re bonus
