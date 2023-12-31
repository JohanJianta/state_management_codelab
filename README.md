# Session 4 : Lab Activity 1 - Stateful and Stateless widget

Untuk bagian Stateless, nilai counter pada teks terlihat tidak berubah meskipun tombol Increment telah ditekan berkali-kali. Namun ketika nilai counter diprint di terminal, diketahui bahwa nilai counter ternyata bertambah sesuai fungsi increment, walaupun perubahannya tidak terlihat pada teks. Hal ini berarti Stateless widget mampu mengubah dan menyimpan nilai atau kondisi variabel di belakang layar, tetapi tidak dapat sekaligus memperbarui tampilan UI ketika nilai tersebut berubah (statis).

Sementara untuk Stateful, nilai counter pada teks dan terminal terlihat berubah seiring ditekannya tombol Increment. Hal ini berarti selain mampu mengubah dan menyimpan nilai atau kondisi variabel di belakang layar, Stateful juga sekaligus memperbarui tampilan UI yang menggunakan variabel tersebut ketika nilainya berubah (dinamis).

Berdasarkan penjelasan tersebut, bisa disimpulkan bahwa Stateless lebih cocok digunakan pada komponen UI yang tidak akan berubah atau tidak memiliki kondisi, seperti ikon atau header. Sementara, Stateful lebih cocok digunakan pada komponen UI yang dapat berubah-ubah sesuai nilai atau kondisi tertentu, seperti checkbox.
