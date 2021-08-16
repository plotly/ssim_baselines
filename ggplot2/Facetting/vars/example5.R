p <- ggplot(mtcars, aes(wt, disp)) + geom_point()
wrap_cut <- function(var, n = 3) {
  # Let's enquote the named argument `var` to make it auto-quoting:
  var <- enquo(var)

  # `as_label()` will create a nice default name:
  nm <- as_label(var)

  # Now let's unquote everything at the right place. Note that we also
  # unquote `n` just in case the data frame has a column named
  # `n`. The latter would have precedence over our local variable
  # because the data is always masking the environment.
  wrap_by(!!nm := cut_number(!!var, !!n))
}
p <-  p + wrap_cut(drat)
