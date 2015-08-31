;
(function () {
    'use strict';

    var gulp        = require('gulp'),
        wrap        = require('gulp-wrap'),
        sass        = require('gulp-sass'),
        watch       = require('gulp-watch'),
        concat      = require('gulp-concat'),
        notify      = require("gulp-notify"),
        declare     = require('gulp-declare')

    // Source Path
    var SOURCE_SASS = 'sass/**/*.scss';

    // Sass compilation
    gulp.task('sass', function () {
        gulp.src(SOURCE_SASS)
            .pipe(sass().on('error', sass.logError))
            .pipe(gulp.dest('css'))
            .pipe(notify('Sass Compiled'));
    });

    // Watch task
    gulp.task('watch', function () {
        gulp.watch(SOURCE_SASS, ['sass']);
    });

    gulp.task('default', ['sass']);    

})();