<#
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.155
	 Created on:   	10/11/2018 10:31 AM
	 Created by:   	John Wilhelmi
	 Organization: 	JWC
	 Filename:     	get-random_Password.psm1
	-------------------------------------------------------------------------
	 Module Name: get-random_Password
	===========================================================================
.SYNOPSIS
get-random_password is a module that will allow IoT manufacturers to produce random passwords for their devices.
.DESCRIPTION
It will provide passwords in a format that can be humanly read in a text file or streamed with delimiters.
.PARAMETER num_of_char
Specifies the length of the password
.PARAMETER quantity
SpecifieS the amount of passwords requested.
.PARAMETER delimiter
Specifies instead of the passwords being generated 1 per line will stream them without carriage return with a delimiter between.
.EXAMPLE
C:\PS> get-random_password 25 5
G_pXA>?^J/!jkW,scJ/D!i#S;
)'>5C!\<U$o!exk>;LB%WQAS;
M/cSzA7p==HCab;GY4"EXCu%1
Hl'<s6ftx8`UB#%TCBl<oFm\z
t)l"L@Jx\[^n.x^qLJp2A7lm6
.EXAMPLE
C:\PS> get-random_password 10 5 "---&&&&----"
[Vj;kyNY,\---&&&&----Xy=8HmShf(---&&&&----Zb.7q;Xn4@---&&&&----dLOmlwPpzI---&&&&----(Z$ItSJ/#p---&&&&----
#>
Function get-random_password([int]$num_of_char, [int]$quantity, [string]$delimiter = '')
{
$random_password_array = @()
for ($j=0;$j -lt $quantity; $j++)
  {
    $array = @()
    for ($i=0;$i -lt $num_of_char; $i++)
        {
        $random = get-random -Minimum 33 -Maximum 123
        $array += [char]($random)
        [string]$string = $array
        $random_password = $string -replace '[ ]'}
    if ($Delimiter -eq '')
        {$random_password_array += $random_password}
    else
        {$random_password_array += ($random_password + ($Delimiter))
        $random_password_array = "$random_password_array"}
  }
return $random_password_array
}