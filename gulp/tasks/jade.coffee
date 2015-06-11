gulp = require("gulp")
browserSync = require("browser-sync")
handleErrors = require("../util/handleErrors")
jade = require('gulp-jade')
jadeData = require('../../src/html/data/data.json')
config = require("../config").jade

gulp.task "jade", (->
  gulp.src(config.src).pipe(jade({locals: jadeData})).on("error", handleErrors)
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload(stream: true))
  return)














