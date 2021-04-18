#
#
# ## Values must integer without comma
# ## values max 100 million
satuan = ['','satu','dua','tiga','empat','lima','enam','tujuh','delapan','sembilan',
          "sepuluh","sebelas","dua belas", "tiga belas", "empat belas", "lima belas", "enam belas", "tujuh belas",
          "delapan belas", "sembilan belas","seratus","seribu","sejuta"]
satuan_lain = ['',' belas',' puluh',' ratus',' ribu',' juta']

x = int(input('Masukan bilangan bulat positif dengan maksimal 100juta: '))


while x > 100000000 or x <= 0:
    x = int(input('Masukan bilangan bulat positif: '))

# y = str(x)

def bilangan_to_text(x):
    x = str(x)
    if int(x) < 20:
        val = satuan[int(x)]

    elif int(x) < 100:
        val = satuan[int( int(x)/10)] + satuan_lain[len(x)] + ' ' + satuan[int(x) % 10]

    elif int(x) < 200:
        if int(x) == 100:
            val = satuan[20]
        else:
            val = satuan[20] + ' ' + bilangan_to_text(int(x)-100)

    elif int(x) < 1000:
        val = satuan[int( int(x)/ 100)] + satuan_lain[len(x)] + ' ' + bilangan_to_text(int(x)%100 )

    elif int(x) < 2000:
        if int(x) == 1000:
            val = satuan[21]
        else:
            val = satuan[21] + ' ' + bilangan_to_text(int( int(x) - 1000))

    # elif int(x) < 10000:
    #     val = satuan[int( int(x)/ 1000)] + satuan_lain[len(x)] + ' ' + bilangan_to_text(int(x)%1000)
    #
    # elif int(x) < 100000:
    #     val = satuan[ int( int(x)/ 1000)] + satuan_lain[len(x)-1] + ' ' + bilangan_to_text(int(x)%1000)

    elif int(x) < 1000000:
        val = bilangan_to_text( int( int(x)/ 1000)) + satuan_lain[len(x)-2] + ' ' + bilangan_to_text(int(x)%1000)

    elif int(x) < 100000000:
        val = bilangan_to_text(int( int(x)/ 1000000)) + satuan_lain[5] + ' ' + bilangan_to_text(int(x)%1000000)

    else:
        val = "seratus juta"



    return val.strip()

print(bilangan_to_text(x))

