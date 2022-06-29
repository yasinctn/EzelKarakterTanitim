//
//  ViewController.swift
//  EzelKarakterTanitim
//
//  Created by Yasin Cetin on 10.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
     
    var karakterler = [Karakter]()
    var kullaniciSecimi : Karakter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        
        //Karakterler
        
        let ramiz = Karakter.init(karakter: "Ramiz Karaeski", bilgi: "  Tuncel Kurtiz ve gençliği Ufuk Bayraktar tarafından canlandırılmış karakterdir.Bilinen adıyla Ramiz Dayı, 1971 yılında İstanbul’a gelmiş ve şehri fethetmeye ant içmiş bileği kuvvetli bir adam. Dizide zekası, hayat tecrübesi, raconu ön planda tutuşu ile öne çıkar. Ömer'i hapishanede koruması altına almış ve eğitmiştir. Mert, dürüst bir kişiliği vardır ve entelektüel bir adamdır. Hayattaki en büyük düşmanı aynı zamanda eski dostu olan Kenan Birkan'dır. Kenan ile aralarına bir aşk girmiş, birbirlerine karşı yaptıkları hatalar aralarındaki düşmanlığı körüklemiştir. Ezeli düşman olmalarına karşın aynı zamanda birbirlerini halen sevip saymaktadırlar.", resim: UIImage(named: "dayi")!)
        let ezel = Karakter.init(karakter: "Ömer Uçar/Ezel Bayraktar", bilgi: "Kenan İmirzalıoğlu tarafından canlandırılmış karakterdir.Ömer Uçar; en yakın arkadaşları Ali ve Cengiz'le beraber oto tamircide çırak olarak çalışan sakin, efendi ve ailesine bağlı bir adamdır. Eyşan'ı gördüğü gibi aşık olur. Ancak en yakınları tarafından ihanete uğrar ve takip eden olaylar sonucunda estetik ameliyatla yüzünü değiştirip Ezel adıyla intikam peşine düşer.", resim: UIImage(named: "ezel")!)
        let eysan = Karakter.init(karakter: "Eyşan Tezcan", bilgi: "Cansu Dere tarafından canlandırılmış karakterdir.Eyşan güzel, çekici bir kadındır. Erkekleri paralarını almak için yönlendirmeyi kariyer edinen yetenekli bir dolandırıcıdır. Cazibeli, baştan çıkarıcı ve bir o kadar da acımasızdır. Küçük kardeşi Bahar'ı herşeyden ve herkesten çok sever.", resim: UIImage(named: "eysan")!)
        let ali = Karakter.init(karakter: "Ali Kırgız", bilgi: " Barış Falay tarafından canlandırılmış karakterdir.Bilinen lakabıyla Kerpeten Ali mahallenin bıçkın delikanlısıdır, fakir bir hayatı vardır. Oto tamir dükkanında Ömer'le beraber çalışmaktadır. Cengiz onu Ömer'e ihanete ikna etmek için onun yüzünden hapiste olan babasını kullanmıştır. Ali ihanet etmiş ancak büyük bir vicdan azabı çekmektedir. Daha sonra kendisini affettirir. Azad ile evlenir ve Tevfik adında çocukları olur.", resim: UIImage(named: "ali")!)
        let cengiz = Karakter.init(karakter: "Cengiz Atay", bilgi: " Yiğit Özşener tarafından canlandırılmış karakterdir.Cengiz Atay (Yiğit Özşener); çıkarcı, güç için her şeyi yapabilecek karakterde bir adam. Ağzı iyi laf yapar, konuşarak her durumdan kurtulabileceğine inanır. 'Hadi Be' repliği ile bilinir. Dizi boyunca kendi çıkarlarını hep ön planda tutmuştur. Eyşan'a aşıktır, onun her dediğini yapmış ve onu hiç aldatmamıştır. Bir şeyi kazanmak için yola çıktıysa kazanabilmek için her şeyi yapar.", resim: UIImage(named: "cengiz")!)
        let selma = Karakter.init(karakter: "Selma Hünel", bilgi: " Nurhan Özenen (14-61) ve gençliği Zeynep Köse tarafından canlandırılmış karakterdir.Dayı'nın ve Kenan'ın âşık olduğu assolist. İkili arasındaki hikâyenin arkadaşlıktan düşmanlığa dönüşmesindeki belki de tek etkendir.", resim: UIImage(named: "selma")!)
        let kenan = Karakter.init(karakter: "Kenan Birkan", bilgi: "Haluk Bilginer ve gençliği Cahit Gök tarafından canlandırılmış karakterdir.Dayı’nın eski dostu ve en büyük düşmanı. Zeki, güçlü ve saygın bir iş adamıdır, ancak arka planda yeraltı dünyasında acımasız ve iş bitirici bir yanı vardır. Acımasızlığı, âşık olduğu kadının Ramiz'i tercih etmesi ve Ramiz'le aralarında geçenler sonucunda giderek artmış, onu canavarlaştırmıştır. Ramiz'le Ezel'i düşman olmalarına karşın aynı zamanda birbirlerini halen sevip saymaktadırlar. Ezel tarafından ''Mükemmel Bir Cinayet'' planı dahilinde intihar süsü verilir ve Ali tarafından öldürülür.", resim: UIImage(named: "kenan")!)
        let tevfik = Karakter.init(karakter: "Tevfik Zaim", bilgi: "Sarp Akkaya tarafından canlandırılmış karakterdir.Yolu Ramiz Dayı'yla hapishanede kesişen başka bir karakterdir. Öz kardeşini töre yüzünden öldürmek zorunda kalmıştır. Ramiz Dayı'ya can borcu vardır ama köstebek olarak yanına gönderildiği Kerpeten Ali'ye de sempati duymaktadır ve sonradan Ali'nin adamı olmuş ve Şebnem ile evlenmiştir. ", resim: UIImage(named: "tefo")!)
        let sebnem = Karakter.init(karakter: "Şebnem Sertuna/Zaim", bilgi: "Bade İşçil tarafından canlandırılmış karakterdir. Ezel'in çocuksu, kolay kanan ama sadık asistanı. Güzelliği ile Tefo'yu etkilemiş dizinin ilerleyen kısımlarında aşkına karşılık vermiştir. Kamil öldükten sonra Ezel'e ihanet eder. Sonradan kendini affettirir ve Tevfik ile evlenir.", resim: UIImage(named: "sebnem")!)
        let bahar = Karakter.init(karakter: "Bahar Tezcan", bilgi: " Sedef Avcı tarafından canlandırılmış karakterdir. Eyşan'ın kardeşi olan Bahar dizinin başından itibaren hastadır, tedavi edilmezse ölüm riski vardır. Bahar'ı tartışmasız herkes sevmekte ve üzerine titremektedir. Güzel, saf, naif, neşeli ve pozitif bir insandır.", resim: UIImage(named: "bahar")!)
        let serdar = Karakter.init(karakter: "Serdar Tezcan", bilgi: "Salih Kalyon tarafından canlandırılmış karakterdir. Ya da bilinen adıyla Yakışıklı Serdar, dizideki olayların başlamasına sebep olan soygunun arkasındaki isimdir. Eyşan ve Bahar'ın babası, büyük bir dolandırıcı ve sahtekardır.", resim: UIImage(named: "serdar")!)
        let bade = Karakter.init(karakter: "Bade Uysal", bilgi: " Berrak Tüzünataç tarafından canlandırılmış karakterdir. Ezel'in sırdaşı ve Eyşan'dan sonra âşık olduğu kadın.", resim: UIImage(named: "bade")!)
        let temmuz = Karakter.init(karakter: "Temmuz Kocaoğlu", bilgi: "Rıza Kocaoğlu tarafından canlandırılmış karakterdir. Kenan Birkan’ın tetikçisi. Psikopat bir katil, her durumda serinkanlı.", resim: UIImage(named: "temmuz")!)
        let sekiz = Karakter.init(karakter: "Sekiz/Ramiz Karaeski", bilgi: " Kıvanç Tatlıtuğ tarafından canlandırılmış karakterdir. Ramiz'in torunu ve adaşı. Küçük yaşta Kenan tarafından kaçırılmış ve Ramiz'e karşı doldurulmuştur. Katil olarak yetiştirilmiş Sekiz son anlarında gerçekleri fark etmiş ancak görevine ihanet edememiştir. Hastanede Ezel tarafından bıçaklanarak öldürülmüştür.", resim: UIImage(named: "sekiz")!)
        let meliha = Karakter.init(karakter: "Meliha Uçar", bilgi: "Ömer'in annesi.", resim: UIImage(named: "meliha")!)
        let mümtaz = Karakter.init(karakter: "Mümtaz Uçar", bilgi: "Ömer'in babası.", resim: UIImage(named: "mümtaz")!)
        let can = Karakter.init(karakter: "Can Uçar", bilgi: "Ömer'in ve Eyşan'ın oğlu.", resim: UIImage(named: "can")!)
        let kaya = Karakter.init(karakter: "Kaya Erk", bilgi: "Kenan'ın baş adamı. Ezel'in cebine koyduğu zehirli sakızdan dolayı ölür.", resim: UIImage(named: "kaya")!)
        let selim = Karakter.init(karakter: "Selim Uğurlı", bilgi: "Kenan'ın gençliğinde Kenan ve Ramiz arasında kalan Kenan Birkan'ın öz abisi.", resim: UIImage(named: "selim")!)
        let yusuf = Karakter.init(karakter: "Yusuf Eğir", bilgi: "Kenan'ın Ramiz'den aldığı intikamdaki asıl yardımcısıdır. Lakabı Demir Yusuf'tur.", resim: UIImage(named: "yusuf")!)
        let hayratlı = Karakter.init(karakter: "Hayratlı", bilgi: "Ramiz'in gençliğinde önce sağ kolu sonra düşmanı olduğu kabadayı.", resim: UIImage(named: "hayratlı")!)
        let mert = Karakter.init(karakter: "Mert Uçar", bilgi: "Ömer'in erkek kardeşi.", resim: UIImage(named: "mert")!)
        let kamil = Karakter.init(karakter: "Kamil Çalıca", bilgi: "İçki batağındaki bir polis Ezel tarafından kuyudan çekilir ve ailesine yakışır biri olabilmek için Ezel'le çalışmaya başlar.", resim: UIImage(named: "kamil")!)
        let kandıralı = Karakter.init(karakter: "Recep Parlak", bilgi: "Kandıralı lakabıyla bilinir. Ramız dayıya ihanet etmiştir.", resim: UIImage(named: "kandıralı")!)
        let eren = Karakter.init(karakter: "Eren Karaçam", bilgi: "Kumarhane soygununda ölen adamın oğlu.", resim: UIImage(named: "eren")!)
        
        
        
        
        karakterler = [ramiz,ezel,eysan,ali,cengiz,selma,kenan,tevfik,sebnem,bahar,serdar,bade,temmuz,sekiz,meliha,mümtaz,can,kaya,selim,yusuf,hayratlı,mert,kamil,kandıralı,eren]
        
    }
    
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return karakterler.count   }
    
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = karakterler[indexPath.row].karakter
        return cell}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tanitim" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.oyuncular = kullaniciSecimi
 
        }}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = karakterler[indexPath.row]
        performSegue(withIdentifier: "tanitim", sender: nil)
        
    }
    


}
