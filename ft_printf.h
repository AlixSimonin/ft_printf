/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asimonin <asimonin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 14:34:42 by asimonin          #+#    #+#             */
/*   Updated: 2023/01/10 17:52:54 by asimonin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include <stdlib.h>

int		ft_printf(const char *str, ...);
int		ft_print_percent(void);
int		ft_print_char(int c);
int		ft_print_hexa(unsigned int nbr, char *base);
int		ft_print_nbr(int nbr);
int		ft_print_void(unsigned long ptr, char *base, int position);
int		ft_print_str(char *str);
int		ft_print_unsigned(unsigned int nbr);

char	*ft_itoa(int n);
void	ft_putstr(char *s);
int		ft_strlen(char *s);

#endif