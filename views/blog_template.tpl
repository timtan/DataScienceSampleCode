<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>A Django Girl's Adventure</title>
    <link href="//fonts.googleapis.com/css?family=Lemon" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//djangogirlstaipei.github.io/assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="header">
        <h1 class="site-title text-center">
            <a href="/">A Python Adventure</a>
        </h1>
    </div>
    <div class="container">
        % for post in post_list:
        <div class="post-wrapper">
            <div class="post">
                <div class="post-heading">
                    <h2 class="title">
                        <a href="#">{{ post['title'] }}</a>
                    </h2>
                </div>

                % if 'photo' in post.keys():
                    <div class="thumbnail">
                        <img src="{{ post['photo'] }}" alt="">
                    </div>
                % else:
                    <div class="thumbnail thumbnail-default"></div>
                % end

                <div class="post-content read-more-block">
                    {{ post['content'] }}
                </div>
                <div class="post-footer">
                    <a class="read-more" href="#">
                        Read More <i class="fa fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        % end
    </div>
</body>
</html>
