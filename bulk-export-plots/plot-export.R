# export plots
plot_ind <- grep("^pl_", ls())
export_obj <- ls()[plot_ind]

for (plot in export_obj) {
  tryCatch({ggsave(paste0("out/", plot, ".png"), eval(parse(text = plot)), )},
           error = function(e) {print(paste0('error with plot: ', plot))},
           finally = {})
}

plot_out <- function(plot_obj) {
  name <- deparse(substitute(plot_obj))
  png(file=paste0("out/", name, ".png"),
      width=800, height=720) 
  plot(plot_obj)
  dev.off()
}