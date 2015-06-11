gulp = require("gulp")
config = require("../config").copyLibs

gulp.task "copyLibs", [], (->
  gulp.src("#{config.libs}/normalize/**").pipe(gulp.dest(config.dest + '/lib'));
  gulp.src("#{config.libs}/opentip/**").pipe(gulp.dest(config.dest + '/lib/opentip'));
  return)