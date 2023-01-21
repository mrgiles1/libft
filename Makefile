# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dagiles <dagiles@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/21 17:30:06 by dagiles           #+#    #+#              #
#    Updated: 2023/01/21 17:38:04 by dagiles          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAG = -Wall -Wextra -Werror

SRC = ft_atoi.c \
	  ft_bzero.c \
	  ft_calloc.c \
	  ft_isalnum.c \
	  ft_isalpha.c \
	  ft_isascii.c \
	  ft_isdigit.c \
	  ft_isprint.c \
	  ft_itoa.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_memcpy.c \
	  ft_memmove.c \
	  ft_memset.c \
	  ft_putchar_fd.c \
	  ft_putendl_fd.c \
	  ft_putnbr_fd.c \
	  ft_putstr_fd.c \
	  ft_split.c \
	  ft_strchr.c \
	  ft_strdup.c \
	  ft_strjoin.c \
	  ft_strlcat.c \
	  ft_strlcpy.c \
	  ft_strlen.c \
	  ft_strmapi.c \
	  ft_strncmp.c \
	  ft_strnstr.c \
	  ft_strrchr.c \
	  ft_strtrim.c \
	  ft_tolower.c \
	  ft_toupper.c \
	  ft_substr.c \
	  ft_striteri.c \
	  
	  
BONUS =	ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c \

# EXTRA = ft_recursive_factorial.c \
# 		ft_recursive_power.c \
# 		ft_sqrt.c \
# 		ft_putchar.c \
# 		ft_putendl.c \
# 		ft_putnbr.c \
# 		ft_putstr.c \

OBJ = $(SRC:.c=.o)

B_OBJ = $(BONUS:.c=.o)

# E_OBJ = $(EXTRA:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar -r $(NAME) $(OBJ) 
	
bonus: $(OBJ) $(B_OBJ)
	@ar -r $(NAME) $?
	
extra: $(OBJ) $(B_OBJ)
	@ar -r $(NAME) $?
	
%.o: %.c
	@gcc $(FLAG) -c $< -o $@

clean:
	@rm -f $(OBJ)
	@rm -f $(B_OBJ)

	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"
	


re: fclean all

.PHONY: all, clean, fclean, re
# Library	=	libft

# files	=	ft_strlen \
# 			ft_memmove \
# 			ft_memcpy \
# 			ft_strlcpy \
# 			ft_strlcat \
# 			ft_isalpha \
# 			ft_isdigit \
# 			ft_isalnum \
# 			ft_isascii \
# 			ft_isprint \
# 			ft_memset \
# 			ft_bzero \
# 			ft_toupper \
# 			ft_tolower \
# 			ft_strchr \
# 			ft_strrchr \
# 			ft_strncmp \
# 			ft_memchr \
# 			ft_memcmp \
# 			ft_strnstr \
# 			ft_atoi \
# 			ft_calloc \
# 			ft_strdup \
# 			ft_substr \
# 			ft_strjoin \
# 			ft_strtrim \
# 			ft_split \
# 			ft_itoa \
# 			ft_strmapi \
# 			ft_striteri \
# 			ft_putchar_fd \
# 			ft_putstr_fd \
# 			ft_putendl_fd \
# 			ft_putnbr_fd \

# BONUS	=	ft_lstnew \
# 			ft_lstadd_front \
# 			ft_lstsize \
# 			ft_lstlast \
# 			ft_lstadd_back \
# 			ft_lstdelone \
# 			ft_lstclear \
# 			ft_lstiter \
# 			ft_lstmap \

# Compiler	= gcc

# CmpFlags	= -Wall -Wextra -Werror

# OUTN	= $(Library).a

# CFILES	= $(files:%=%.c)

# OFILES	= $(files:%=%.o)

# NAME	= $(OUTN)

# $(NAME):
# 	$(Compiler) $(CmpFlags) -c $(CFILES) -I./
# 	ar -rc $(OUTN) $(OFILES)

# all: $(NAME)

# clean:
# 	rm -f $(NAME)
# 	rm -f $(OFILES)

# fclean: clean
# 	rm -f $(NAME)

# re: fclean all

# .PHONY: all, clean, fclean, re
