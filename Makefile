Library		= libft

files 	   = ft_strlen \
			 ft_memmove \
			 ft_memcpy \
			 ft_strlcpy \
			 ft_strlcat \
			 ft_isalpha \
			 ft_isdigit \
			 ft_isalnum \
			 ft_isascii \
			 ft_isprint \
			 ft_memset \
			 ft_bzero \
			 ft_toupper \
			 ft_tolower \
			 ft_strchr \
			 ft_strrchr \
			 ft_strncmp \
			 ft_memchr \
			 ft_memcmp \
			 ft_strnstr \
			 ft_atoi \
			 ft_calloc \
			 ft_strdup \
			 ft_substr \
			 ft_strjoin \
			 ft_strtrim \
			 ft_split \
			 ft_itoa \
			 ft_strmapi \
			 ft_striteri \
			 ft_putchar_fd \
			 ft_putstr_fd \
			 ft_putendl_fd \
			 ft_putnbr_fd \
			 ft_lstclear \
			 ft_lstadd_back \
			 ft_lstadd_front \
			 ft_lstclear \
			 ft_lstdelone \
			 ft_lstiter \
			 ft_lstlast \
			 ft_lstmap\
			 ft_lstnew \
			 ft_lstsize \

Compiler	= gcc

CmpFlags	= -Wall -Wextra -Werror

OUTN	= $(Library).a

CFILES	= $(files:%=%.c)

OFILES	= $(files:%=%.o)

NAME	= $(OUTN)

$(NAME):
	$(Compiler) $(CmpFlags) -c $(CFILES) -I./
	ar -rc $(OUTN) $(OFILES)

all: $(NAME)

clean:
	rm -f $(NAME)
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re

# The "Library" variable at the top specifies the name of the library. The "files" variable lists all the source files (ending in .c) that should be included in the library. The "Compiler" variable specifies the compiler to use (in this case, GCC), and the "CmpFlags" variable lists any flags that should be passed to the compiler.

# The "OUTN" variable specifies the output file name, which is the "Library" variable followed by ".a" (for "static library"). The "CFILES" variable is derived from the "files" variable by replacing the "%" character with ".c". The "OFILES" variable is derived from the "files" variable by replacing the "%" character with ".o".

# The first rule, "$(NAME)", specifies the command to build the library. It runs the compiler to generate object files from the source files, then uses the "ar" command to create a static library from the object files.

# The "all" rule depends on the "$(NAME)" rule and builds the library by default. The "clean" rule removes the library and object files. The "fclean" rule is a combination of "clean" and "fclean" and removes the library and object files. The "re" rule is a combination of "fclean" and "all" and rebuilds the library. The ".PHONY" line specifies that the rules "all", "clean", "fclean", and "re" are not files and always to be executed when called.