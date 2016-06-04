hexo.extend.helper.register('posts_group_by_year', function(posts) {
    var year_posts = {};
    posts.forEach(function(post) {
        if (!year_posts[post.date.year()]) {
            year_posts[post.date.year()] = [];
        }
        year_posts[post.date.year()].push(post);
    });
    return year_posts;
});
