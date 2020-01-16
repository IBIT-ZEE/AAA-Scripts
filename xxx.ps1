param( $a, $b, $c )

function main
	{
	Sound-Plim;

	$a = ,"xxx"
	$a += "-.ps1"
	$a -is [array]
	AAA-Alert $a;

	File-List $a;

	$c1 = [c1]::new();
	$c2 = [c2]::new();

	Sound-Plum;

	}


<#
AAA-function leverage of PS OOP overloading
AAA-Splatter [type] $args

Samples:

***** Getter/Setter
# AV-Path ............ get ?if-$null-create and sert active
# AV-Path o .......... get from o
# AV-Path o <path> ... set path on o
# AV-Path <path> ..... set path on AAA-Active ?auto-create if $null

*****Action
AV-Scan ............ scan AAA-Active.path ?if $null AAA-Active
AV-Scan o .......... scan o.path
AV-Scan o <path> ... scan path in o
AV-Scan <path> ..... scan path on AAA-Active ?if $null create


#>
function zeeSplatterProof( $xTemplate, $xData )
	{
	# $xTemplate Type, arg1, ...
	$xTemplate.GetType();
	$xData.GetType();


	# return @splat result
	}


function zeeSyntaxParserProof( $xObject )
	{
	# 1st parameter is allways object or null
	# then operate $args
	
	$xObject;
	""
	$args

	}




################################################################################
# TRAINNING DATA
# +
# BOOTSTRAP CODE
################################################################################

$a = 1, 22, 333, 4444, 55555, 666666, 7777777;
main

# OOP class
class c0{ $p1=1; $p2=22; [int]m1(){ return $this.p1 - $this.p2; } }

# OOP class STATIC
class c1 : c0
	{ 
	[int] $p3 = 333;
	[int] m1( [int]$x      ) { return $x.GetType().Name }
	[int] m1( [string]$x   ) { return 22 }
	[int] m1( [object]$x   ) { return 333 }
	}

class c2 : c1
	{ 
	static $p3=3; 
	static [int]m2(){ return ++[c2]::p3 } 
	}


