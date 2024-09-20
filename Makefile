# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anamedin <anamedin@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/20 18:38:08 by anamedin          #+#    #+#              #
#    Updated: 2024/09/20 19:01:43 by anamedin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
ARC = ar -rcs

NAME = libft.a
HEADER = libft.h

SRCS =  ft_bzero.c ft_calloc.c \
	ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_memchr.c\
	ft_atoi.c ft_strchr.c ft_strjoin.c \
    ft_strlen.c ft_strnstr.c ft_substr.c \
    ft_itoa.c ft_strdup.c ft_strlcat.c \
    ft_strmapi.c ft_strrchr.c ft_tolower.c \
    ft_split.c ft_striteri.c ft_strlcpy.c \
    ft_strncmp.c ft_strtrim.c ft_toupper.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	ft_isalnum.c ft_isalpha.c ft_isascii.c \
    ft_isdigit.c ft_isprint.c

OBJS = $(SRCS:.c=.o)

#Regla implícita
all: $(NAME)

$(NAME): $(OBJS)
	$(ARC) $(NAME) $(OBJS)

%.o: %.c $(HEADER) Makefile
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
