/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: drtaili <drtaili@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/12 18:29:02 by drtaili           #+#    #+#             */
/*   Updated: 2022/11/19 03:25:48 by drtaili          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*iter;
	t_list	*tmp;

	if (!lst)
		return ;
	iter = *lst;
	while (iter)
	{
		tmp = iter;
		iter = iter->next;
		ft_lstdelone(tmp, del);
	}
	*lst = NULL;
}
