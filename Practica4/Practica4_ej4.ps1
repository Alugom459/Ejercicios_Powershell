[int]$num = read-host "Introduce hasta que numero"

for ($a = 1; $a -le $num ; $a += 2)

{


write-host -NoNewline "$a," 

}
