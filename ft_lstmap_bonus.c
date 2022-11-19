/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: drtaili <drtaili@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/12 19:10:40 by drtaili           #+#    #+#             */
/*   Updated: 2022/11/19 03:27:21 by drtaili          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*tmp;

	if (lst == NULL)
		return (NULL);
	tmp = malloc(sizeof(t_list));
	if (!tmp)
		return (NULL);
	tmp->content = f(lst->content);
	tmp->next = ft_lstmap(lst->next, f, del);
	return (tmp);
}
