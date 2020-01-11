R's default `%in%` function uses the `match()` function under the hood, which works similarly to `identical()`: only exact matches are returned. However, when working with floating point decimals, this can lead to strange results due to the limits of machine precision:

```
x <- seq(from = 1, to = 3, by = 0.1)
y <- c(3, 2.4, 1.8, 1.4)
x[x %in% y]
[1] 1.4 1.8 3.0
```

By default, R will not return 2.4 here, which can be a bit of a surprise!

Some users may be familiar with `identical()`'s partner in crime, `all.equal()`, which takes into account equality with some small tolerance, set to the square root of R's machine precision by default. However, there is no easy equivalent partner in crime to the `%in%` function!

Since the default behavior is quite likely surprising to most users, the `inclose` package overwrites R's default `%in%` with an equivalent function that acts similarly to `all.equal()`, while rewriting R's default `%in%` to a function called `%idin%`, which stands for `identical in`.

Now `%in%` will work like this:

```
x <- seq(from = 1, to = 3, by = 0.1)
y <- c(3, 2.4, 1.8, 1.4)
x[x %in% y]
[1] 1.4 1.8 3.0
```

Thanks to the folks on [this Stack Overflow thread](https://stackoverflow.com/questions/33226152/match-values-with-tolerance) for getting me 95% of the way there, particularly [Pierre Lafortune](https://stackoverflow.com/users/4564247/pierre-lafortune).
