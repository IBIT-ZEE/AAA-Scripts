

@if "%~1"=="" AAA-Message ^
	"Syntax $ <memoizet>" ^
	"" ^
	"add argumented data to Memoize/set..." ^
	"...data is stored in (AAA!!)\_notes.$kb" ^
	"" ^
	"$$ to view current Memoization..." ^
	"$$$ to edit Memoized..."


@echo Adding...
@echo %*
@echo %* >> C:\DAT\AAA\_notes.$kb
@echo,


