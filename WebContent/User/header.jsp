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
                            <!-- movielistController -->
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="trailers.jsp">Trailers</a>
                            
                        </li>
                        <!-- <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="rating.jsp">Rating</a>
                          
                        </li> -->
                       
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="contactUs.jsp">Contact Us</a>
                               
                        
                    </ul>   
                                      
                                      
                               
                     
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <div class="auth auth--home">
                      <div class="auth__show">
                        <span class="auth__image">
                          <!-- <img alt="" src="img/hp.jpg"> -->
                        </span>
                      </div>
                      <a href="#" class="btn btn--sign btn--singin">
                          <%=session.getAttribute("firstname") %>
                      </a>
                        <ul class="auth__function">
                            <li><a href="<%=request.getContextPath() %>/updateUserProfileController?flag=edit_user&user_id=<%=session.getAttribute("userid") %>" class="auth__function-item">Update Profile</a></li>
                            <li><a href="<%=request.getContextPath()%>/bookingHistoryController?flag=get_history" class="auth__function-item">Booked tickets</a></li>
                             <li><a href="<%=request.getContextPath()%>/bookingHistoryController?flag=get_history_wallet" class="auth__function-item">Wallet</a></li>
                            <li><a href="<%=request.getContextPath()%>/emailController?flag=change&&emailId=<%=session.getAttribute("un") %>" class="auth__function-item">Change Password</a></li>
                           
                            <li><a href="<%=request.getContextPath() %>/userLoginController?flag=logout" class="auth__function-item">Log Out</a></li>
                        	
                        </ul>

                 

            </div></div></div>
        </header>
