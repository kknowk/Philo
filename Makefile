NAME = philo
CC = cc
INCLUDES_DIR = ./Includes
CFLAGS = -I$(INCLUDES_DIR)
# CFLAGS += -g -fsanitize=address
# CFLAGS += -g -fsanitize=thread

SRCS = srcs/main.c \
	srcs/actions.c \
	srcs/helper_life_cycle.c \
	srcs/utiles.c

OBJS = $(SRCS:%.c=%.o)

# LIBDIR = ./libft
# LIBFT = $(LIBDIR)/libft.a

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

# $(LIBFT):
# 	$(MAKE) -C $(LIBDIR)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
