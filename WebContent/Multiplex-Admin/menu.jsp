<nav id="main_menu">
                <div class="menu_wrapper">
                    <ul>
                        <li class="first_level">
                            <a href="<%=request.getContextPath()%>/revenueController?flag=dashboard">
                                <span class="icon_house_alt first_level_icon"></span>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-adult bs_ttip"></span>
                                <span class="menu-title">Manage Theatre</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/userRegistrationController?flag=search_country_state_city_for_multiplex">Add Theatre</a></li>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&multiplex_id=<%= session.getAttribute("multiplex_id")%>">Search Theatre	</a></li>
								</ul>
						</li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-adult bs_ttip"></span>
                                <span class="menu-title">Food Bookings</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&source=itemForm&multiplex_id=<%= session.getAttribute("multiplex_id")%>">Add Items</a></li>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&source=itemAgent&multiplex_id=<%= session.getAttribute("multiplex_id")%>">Add Item Agent</a></li>
									<%--<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&admin_name=<%= session.getAttribute("session_name")%>">Search Items	</a></li> --%>
								</ul>
						</li>
						<%-- <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-adult bs_ttip"></span>
                                <span class="menu-title">Movie</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre_movie&admin_name=<%= session.getAttribute("session_name")%>">Add Movies</a></li>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&admin_name=<%= session.getAttribute("session_name")%>">Search Movies	</a></li>
								</ul>
						</li> --%>
						<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-adult bs_ttip"></span>
                                <span class="menu-title">Show</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&source=add_show&multiplex_id=<%= session.getAttribute("multiplex_id")%>">Add Show</a></li>
									<li><a href="<%=request.getContextPath() %>/addTheatreController?flag=search_theatre&source=show&multiplex_id=<%= session.getAttribute("multiplex_id")%>">View Current Shows</a></li>
								</ul>
						</li> 
						
                      </ul>
                </div>
                <div class="menu_toggle">
                    <span class="icon_menu_toggle">
                        <i class="arrow_carrot-2left toggle_left"></i>
                        <i class="arrow_carrot-2right toggle_right" style="display:none"></i>
                    </span>
                </div>
</nav>