<nav id="main_menu">
                <div class="menu_wrapper">
                    <ul>
                        <li class="first_level">
                            <a href="admin.jsp">
                                <span class="icon_house_alt first_level_icon"></span>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-adult bs_ttip"></span>
                                <span class="menu-title">Manage User</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/userRegistrationController?flag=search_country_state_city_for_user">Add User</a></li>
									<li><a href="<%=request.getContextPath() %>/userRegistrationController?flag=search_user">View User	</a></li>
								</ul>
							</li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Manage Country</span>
                            </a>
								<ul>
									<li><a href="addCountry.jsp">Add Country</a></li>
									<li><a href="<%=request.getContextPath() %>/countryController?flag=search_country">View Country</a></li>
								</ul>
							</li>
							<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Manage State</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath() %>/stateController?flag=search_country_for_state">Add State</a></li>
									<li><a href="<%=request.getContextPath() %>/stateController?flag=search_state">View State</a></li>
								</ul>
							</li>
							<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Manage City</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/cityController?flag=search_country_state_for_city">Add City</a></li>
									<li><a href="<%=request.getContextPath() %>/cityController?flag=search_city">View City</a></li>
								</ul>
							</li>
							<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Manage Review</span>
                            </a>
								<ul>
									<%--<li><a href="<%=request.getContextPath()%>/reviewMovieController?flag=search_country_state_for_city">Reviews</a></li> --%>
									<li><a href="<%=request.getContextPath() %>/reviewMovieController?flag=search_review">View Reviews</a></li>
								</ul>
							</li>
							<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Multiplex Admin</span>
                            </a>
								<ul>
									<li><a href="<%=request.getContextPath() %>/multiplexRegistrationController?flag=load_multiplex">Add Multiplex Admin</a></li>
									<li><a href="<%=request.getContextPath() %>/multiplexAdminController?flag=search_multiplex_admin">View Multiplex Admin</a></li>
								</ul>
							</li>
							<li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="el-icon-pencil bs_ttip"></span>
                                <span class="menu-title">Manage Movie</span>
                            </a>
								<ul>
									<%--<li><a href="<%=request.getContextPath()%>/reviewMovieController?flag=search_country_state_for_city">Reviews</a></li> --%>
									<li><a href="addMovie1.jsp">AddMovie</a></li>
								</ul>
							</li>
                        </div>
            </nav>