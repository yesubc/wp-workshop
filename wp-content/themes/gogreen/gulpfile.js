;
(function () {
    'use strict';

    var gulp        = require('gulp'),
        wrap        = require('gulp-wrap'),
        sass        = require('gulp-sass'),
        watch       = require('gulp-watch'),
        concat      = require('gulp-concat'),
        notify      = require("gulp-notify"),
        declare     = require('gulp-declare'),
        //Css Minify
        minifyCss   = require('gulp-minify-css'),
        rename      = require('gulp-rename'),
        //Js Minify
        uglify = require('gulp-uglify');

    // Source Path
    var SOURCE_SASS = 'scss/**/*.scss';

    // Sass Compilation
    gulp.task('sass', function () {
        gulp.src('scss/**/*.scss')
            .pipe(sass().on('error', sass.logError))
            .pipe(gulp.dest('css'))
            // .pipe(concat('style.css'))
            // .pipe(gulp.dest('css'))
            // .pipe(minifyCss({keeSpecialComments:1}))
            // .pipe(rename('style.min.css'))
            // .pipe(gulp.dest('css'))
            // .pipe(notify('Sass Compiled'));
    });

    //Js Minified
    gulp.task('compress', function() {
      return gulp.src('js/*.js')
        .pipe(uglify())
        .pipe(gulp.dest('public/js'));
    });


    // Watch task
    gulp.task('watch', function () {
        gulp.watch(SOURCE_SASS, ['sass']);
    });

    gulp.task('default', ['sass']);    

})();