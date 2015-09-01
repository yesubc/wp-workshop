;
(function () {
    'use strict';

    var gulp        = require('gulp'),
        wrap        = require('gulp-wrap'),
        sass        = require('gulp-sass'),
        //less        = require('gulp-less'),
        watch       = require('gulp-watch'),
        concat      = require('gulp-concat'),
        notify      = require("gulp-notify"),
        declare     = require('gulp-declare')
        //Less
        //path        = require('path');

    // Source Path
    var SOURCE_SASS = 'assets/sass/**/*.scss';
    //var SOURCE_LESS = 'assets/less/**/*.less';

    // Sass compilation
    gulp.task('sass', function () {
        gulp.src(SOURCE_SASS)
            .pipe(sass().on('error', sass.logError))
            .pipe(gulp.dest('assets/css'))
            .pipe(notify('Sass Compiled'));
    });

    // Less Compilation
    //gulp.task('less', function () {
      //return gulp.src('assets/less/**/*.less')
        //.pipe(less({
          //paths: [ path.join(__dirname, 'less', 'includes') ]
        //}))
        //.pipe(gulp.dest('assets/css'))
        //.pipe(notify('Less Compiled'));
    //});

    // Watch task
    gulp.task('watch', function () {
        gulp.watch(SOURCE_SASS, ['sass']);
        //gulp.watch(SOURCE_LESS, ['less']);
    });

    gulp.task('default', ['sass']);
    //gulp.task('default', ['less']);  

})();