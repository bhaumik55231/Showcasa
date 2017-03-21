<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href='index.jsp' class="logo">
                    <img alt='logo' src="img/d.png">
                </a>
                
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="movieList.jsp?flag=load1&page_movielist=1">Movies List</a>
                            
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="trailers.jsp">Trailers</a>
                            
                        </li>
                        
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="login.jsp">Login</a>
                            
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="<%=request.getContextPath()%>/updateUserProfileController?flag=search_country_state_city_for_user">Register</a>
                            
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="contactUs.jsp">Contact Us</a>
                               
                        
                    </ul>
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                
            </div>
        </header>
