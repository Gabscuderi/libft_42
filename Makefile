# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gscuderi <gscuderi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/06 18:17:15 by gscuderi          #+#    #+#              #
#    Updated: 2024/02/06 18:17:15 by gscuderi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEADER = libft.h

SOURCES = ft_bzero.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
		  ft_strlen.c ft_memset.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c\
		  ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c\
		  ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c\
		  ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJS = $(SOURCES:.c=.o)

BONUS_SOURCES = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
				ft_lstclear.c ft_lstiter.c ft_lstmap.c

BONUS_OBJS = $(BONUS_SOURCES:.c=.o)

CC = gcc

FLAGS = -Wall -Wextra -Werror

RM = rm -f

AR = ar rcs

$(NAME) : $(OBJS)
	${AR} ${NAME} ${OBJS}

%.o: %.c $(HEADER_FILES)
	${CC} ${FLAGS} -c $< -o $@

all : $(NAME)

bonus : $(BONUS_OBJS)
	${AR} ${NAME} ${BONUS_OBJS}

clean:
	${RM} ${OBJS} ${BONUS_OBJS}

fclean : clean
	${RM} ${NAME}

re: fclean all

.PHONY: all, clean, fclean, re, bonus
