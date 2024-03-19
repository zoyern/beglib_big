# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/19 16:40:29 by marvin            #+#    #+#              #
#    Updated: 2024/03/19 16:40:29 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include library.mk

NAME		= library
CFLAG		= -Wall -Wextra -Werror -g3 -gdwarf-4
AR			= ar rc
LIB			= ranlib
CC			= cc

$(LIBRARY_BUILD_DIR)/%.o: $(LIBRARY_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC)	$(CFLAG) -c	$< -o $@
	@clear

$(LIBRARY_BUILD_OBJ)/%.o: $(LIBRARY_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC)	$(CFLAG) -c	$< -o $@
	@clear

all : $(NAME)

$(NAME): $(LIBRARY_OBJ) 
	@echo $(LIBRARY_OBJ)
	${AR} $(LIBRARY_BUILD_DIR)/${NAME}.a ${LIBRARY_OBJ}
			${LIB} $(LIBRARY_BUILD_DIR)/${NAME}.a
	@$(CC) $(LIBRARY_OBJ) -o $(LIBRARY_BUILD_DIR)/$(NAME) $(CFLAG)
	@clear

clear :
	@clear
	@echo "42Paris : $(NAME)"
	@echo ""

val :
	@clear
	valgrind --leak-check=full --show-leak-kinds=all --trace-children=yes --track-origins=yes ./$(NAME)
	@echo ""

clean : clear
	@rm -rf build/
	@echo "Clean   : *.o in build !"

fclean : clean
	@rm -f $(NAME)
	@echo "Clean   : ./$(NAME)"

aclean : fclean cleanlib clear

minlibx :
	@git clone https://github.com/42Paris/minilibx-linux.git
	@make -C ./minilibx-linux
	clear
	
cleanlib :
	@rm -rf minilibx-linux

re: fclean all clear 

.PHONY: all clean fclean re