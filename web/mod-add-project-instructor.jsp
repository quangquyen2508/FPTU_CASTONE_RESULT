<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="referrer" content="no-referrer">
        <title>FPT Capstone Project Result</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/css/mod-project.css">    
        <link rel="stylesheet" href="./assets/css/mod-post.css">    
        <link rel="stylesheet" href="./assets/css/styles.css">
        <link rel="stylesheet" href="./assets/css/responsive.css">
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>FPT University</h3>
                    <strong>FU</strong>
                </div>
                <ul class="list-unstyled components">
                    <li class="nav-item active">
                        <a class="nav-link" href="mod-index.jsp">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>Trang ch???</span></a>
                    </li>
                    <hr class="sidebar-divider">

                    <li class="dropdown">
                        <a href="admin.jsp" data-toggle="dropdown" aria-expanded="false" data-target="#homeSubmenu">
                            <i class="fas fa-home"></i> Qu???n L?? Ng?????i D??ng
                        </a>
                    </li>

                    <hr class="sidebar-divider">

                    <li>
                        <a href="mod-project.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Qu???n L?? ????? ??n
                        </a>
                    </li>
                    <li>
                        <a href="mod-team.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Qu???n L?? Nh??m ????? ??n
                        </a>
                    </li>
                    <li>
                        <a href="student.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Qu???n l?? Sinh Vi??n
                        </a>
                    </li>
                    <li>
                        <a href="instructor.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Qu???n L?? Gi???ng Vi??n
                        </a>
                    </li>
                    <li>
                        <a href="mod-semester.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Qu???n L?? H???c K???
                        </a>
                    </li>

                    <hr class="sidebar-divider">

                    <li>
                        <a href="mod-post.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> B??i ????ng Ch??nh
                        </a>
                        <a href="mod-request.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-copy"></i> B??i Vi???t C???a Sinh Vi??n
                        </a>
                    </li>

                </ul>

            </nav>

            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <div class="mod-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="left-side-menu">
                                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                                            <i class="fas fa-align-left"></i>
                                        </button>
                                        <div class="menu-search">
                                            <button><i class="fa fa-search" aria-hidden="true"></i></button>
                                            <input class="mod-menu-input" type="text" placeholder="T??m Ki???m...">
                                        </div>
                                    </div>   
                                </div>
                                <div class="col-md-6">
                                    <div class="right-side-info">
                                        <div class="info-login">
                                            <img src="https://cdn2.mhpbooks.com/2014/03/test_ttp_big.jpg" alt="">
                                            <span>Xin Ch??o, Moderator 1 <i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>


                <div class="content-detail content-post add-post">
                    <h2>L???a Ch???n Gi???ng Vi??n H?????ng D???n Cho ????? ??n</h2>
                    <c:if test="${requestScope.PROJECT_LIST == null || requestScope.INSTRUCTOR_LIST == null}">
                        <c:redirect url="MainController?action=GetListProject&page=add-projectinstructor"></c:redirect>
                    </c:if>
                    <form action="MainController" method="POST">

                        <select name="project-id" id="" required>
                            <option disabled selected>L???a Ch???n ????? ??n C???n Th??m Gi???ng Vi??n H?????ng D???n</option>
                            <c:forEach items="${requestScope.PROJECT_LIST}" var="o">
                                <option value="${o.projectID}">${o.projectName}</option>
                            </c:forEach>
                        </select>
                        <br>

                        <select name="instructor-id" id="" required>
                            <option disabled selected>L???a Ch???n Gi???ng Vi??n H?????ng D???n Cho ????? ??n</option>
                            <c:forEach items="${requestScope.INSTRUCTOR_LIST}" var="o">
                                <option value="${o.instructorID}">${o.instructorName}</option>
                            </c:forEach>
                        </select>

                        <div class="add-project-submit">
                            <button type="submit" name="action" value="AddProjectInstructor">L??u</button>
                            <button class="cancel-add-btn" type="button">H???y B???</button>
                        </div>
                    </form>
                </div>

                <script src="./ckeditor/ckeditor.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>    
                <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js" integrity="sha512-9UR1ynHntZdqHnwXKTaOm1s6V9fExqejKvg5XMawEMToW4sSw+3jtLrYfZPijvnwnnE8Uol1O9BcAskoxgec+g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script src="./assets/js/app.js"></script>

                <script type="text/javascript">
                    $(document).ready(function () {
                        $('#sidebarCollapse').on('click', function () {
                            $('#sidebar').toggleClass('active');
                        });
                    });
                </script>
                <script>
                    CKEDITOR.plugins.addExternal('imgur', '/FUCapstoneResult/ckeditor/plugins/imgur/', 'plugin.js');
                    var editor = CKEDITOR.replace('editor', {
                        extraPlugins: 'imgur'
                    });

                    CKEDITOR.editorConfig = function (config) {
                        config.extraPlugins = 'imgur';
                        config.imgurClientID = '424e57033a8d4ea';
                    };

                    editor.on('change', function (evt) {
                        var data = CKEDITOR.instances.editor.getData();
                        document.getElementById("post-content").value = data;
                        console.log(data)
                    });
                </script>
                <script>
                    $("document").ready(function () {
                        $("input[type=file]").on("change", function () {
                            var $files = $(this).get(0).files;
                            if ($files.length) {
                                if ($files[0].size > $(this).data("max-size") * 1024) {
                                    console.log("Vui l??ng ch???n file c?? dung l?????ng nh??? h??n!");
                                    return false;
                                }

                                console.log("??ang upload h??nh ???nh l??n imgur...");
                                var apiUrl = "https://api.imgur.com/3/image";
                                var apiKey = "dcd0ee22791c49d";
                                var settings = {
                                    async: false,
                                    crossDomain: true,
                                    processData: false,
                                    contentType: false,
                                    type: "POST",
                                    url: apiUrl,
                                    headers: {
                                        Authorization: "Client-ID " + apiKey,
                                        Accept: "application/json",
                                    },
                                    mimeType: "multipart/form-data",
                                };
                                var formData = new FormData();
                                formData.append("image", $files[0]);
                                settings.data = formData;
                                $.ajax(settings).done(function (response) {
                                    console.log(response);
                                    var obj = JSON.parse(response);
                                    document.getElementById("mod-post__preview-link").src = obj.data.link;
                                    document.getElementById("mod-post__preview-image").src = obj.data.link;
                                    document.getElementById("mod-post__preview-input").value = obj.data.link;
                                    obj.data.link;
                                });
                            }
                        });
                    });
                </script>
                <script>
                    $(function () {
                        $('input, select').on('change', function (event) {
                            var $element = $(event.target),
                                    $container = $element.closest('.example');

                            if (!$element.data('tagsinput'))
                                return;

                            var val = $element.val();
                            if (val === null) {
                                val = "null";
                            } else {
                                document.getElementById('post-tag-hidden').value = val;
                            }

                            $('code', $('pre.val', $container)).html(($.isArray(val) ? JSON.stringify(val) : "\"" + val.replace('"', '\\"') + "\""));
                            $('code', $('pre.items', $container)).html(JSON.stringify($element.tagsinput('items')));
                        }).trigger('change');
                    });
                </script>
                </body>
                </html>