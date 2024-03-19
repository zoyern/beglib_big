# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    LIBRARY.mk                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/19 16:39:35 by marvin            #+#    #+#              #
#    Updated: 2024/03/19 16:39:35 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
LIBRARY_PATH		= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
LIBRARY_HEAD 		= $(patsubst %/,%,$(LIBRARY_PATH))/src/library.h
LIBRARY_HEADER		= $(patsubst %/,%,$(LIBRARY_PATH))/library.h
LIBRARY_LIB 		= $(patsubst %/,%,$(LIBRARY_PATH))/build/library.a
LIBRARY_DIR		=  ./src
LIBRARY_BUILD_DIR	= build
LIBRARY_BUILD_OBJ	= build/obj
LIBRARY_FILE		= $(wildcard $(LIBRARY_DIR)/*.c) ./exemple/main_library.c
LIBRARY_RE			= make -C $(LIBRARY_PATH) re
LIBRARY_OBJ = $(patsubst $(LIBRARY_DIR)/%.c,$(LIBRARY_BUILD_OBJ)/%.o, $(LIBRARY_FILE) )