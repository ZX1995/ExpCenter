package org.expc.daoimpl;

import org.expc.dao.NavigationItemDao;
import org.expc.entity.NavigationItem;
import org.springframework.stereotype.Repository;
@Repository("navigationItemDaoImpl")
public class NavigationItemDaoImpl extends BaseDaoImpl<NavigationItem> implements NavigationItemDao{

}
