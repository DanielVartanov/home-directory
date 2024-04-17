Что делает HD mod
-----------------

Изначально HoMM 3 HD создавался для изменения оригинального разрешения игры 800x600 на большее, но сейчас его функциональность гораздо шире. HoMM 3 HD не затрагивает оригинальный геймплей, а улучшает функциональную часть интерфейса, делает игру гораздо более удобной, исправляет ряд багов оригинальной игры и добавляет незаменимый для онлайн игры функционал.

Например: добавляет дополнительные кнопки обмена армиями в окне обмена героями, быстрое управление армией (разделение на две части, выделение "единичек" и так далее).

Все расширения и исправления опциональны, каждый игрок сможет настроить игру согласно своим потребностям. Все имеющиеся незначительные изменения графики сделаны с сохранением оригинального стиля.

Полное описание: https://sites.google.com/site/heroes3hd/rus/%D1%80%D0%B0%D1%81%D1%88%D0%B8%D1%80%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81%D0%B0-%D0%B8-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B5%D0%BA-%D0%B8%D0%B3%D1%80%D1%8B?authuser=0

Важно (из HotA FAQ): HotA полностью совместима с HD-mod и корректно работает при любых настройках. Разработчик HD-mod-а входит в команду.

Что делает HD+
--------------

В одиночной игре есть возможность бесконечно переигрывать битву, если не устроил ее результат.
Так же полностью совместима с HotA

Полное описание: https://sites.google.com/site/heroes3hd/rus/hd?authuser=0


Что делает HotA помимо добавления новых замков
----------------------------------------------

В оригинальном SoD есть большое количество ошибок, неточностей и багов --- как игровых, так и эстетических. Какие шаги в HotA предприняты на этот счет?
Крупная часть нашей работы — это исправление ошибок оригинала: как правка технических багов, так и усовершенствование графики.

А так же правки баланса, новые типы местности, новые артефакты (в том числе сборные) и так далее.

Полное описание: https://h3hota.com/ru/documentation


Manual installation script
--------------------------

Важно: HotA требует, чтобы Герои были установлены **не** в папке
`Program files (x86)`, плюс скрипты `bin/heroes` и `bin/hota`
настроены на определённый каталог, поэтому нужно, чтобы как минимум
Герои были установлены в другой, недефолтной папке.

- Install GOG via wine
  - Go to gog.com, download, run with `wine`
  - Run `mkdir ~/.wine/drive_c$ mkdir "GOG Games"`
  - Go to "Settings", "Installing, updating"
    - Change "Game installation folder" to `C:\GOG Games`

- Via GOG Galaxy, install Heroes 3 Complete. Note: proof that it is compatible with HotA: https://h3hota.com/ru/faq

- Install Heroes HD mod:
  - Download https://sites.google.com/site/heroes3hd/eng/download?authuser=0
  - Install
    - Run it via wine `wine HoMM3_HD_Latest_setup.exe`
    - Choose a folder of HoMM3 installaion `C:\GOG Games\HoMM 3 Complete`
    - Run it
    - Press `Create HD.exe`
   - Leave resolution as is
      """
      В целом, не в зависимости от размера экрана, для стандартных широкоэкранных мониторов (пропорция 16:9) рекомендуется выбирать в HD-лаунчере разрешение 1180x664. Приемлемый масштаб также сохраняется и в 1280x720 (или 1285x723). Настоятельно не рекомендуется выбирать разрешения выше или, тем более, «родное» разрешение дисплея (к примеру, 1920x1080), масштаб игровых элементов будет слишком мелким. Следует также обратить внимание на настройки Стретч фильтров. Стретч фильтры позволяют добиться наиболее корректного и эстетичного внешнего вида игры при растягивании.
      """
    - Choose Mode of `(stretchable) 32-bit OpenGL`
      """
      Рекомендуется использовать режим . Последний режим в списке обеспечивает наиболее точную передачу палитры игры и наиболее эстетичное масташбирование изображения за счёт использования Стретч фильтров. Подходящий Стретч фильтр пользователь может выбрать самостоятельно, подобрав вариант с приемлемым быстродействием и достаточным качеством растягивания изображения. Плавное перемещение героя по карте, доступное в режиме OpenGL, настраивается в разделе Твики, в строке < Graphics.OpenGl.SmoothMovement > = 1. Для отключения можно заменить 1 на 0.
      """
    - Choose `Full Screen Mode`
    - Make sure `HD+` checkbox is checked
    - Press `Play`
    - Move the game window to another screen, go there click the game
      window title bar and press Win+f

- Install Horn of the Abyss:
  - Download from https://h3hota.com/ru/download
  - Install
    - Run it via wine
    - Choose a folder of HoMM3 installaion `C:\GOG Games\HoMM 3 Complete`
    - Run `HD_Launcher.exe`:
      ```
      cd ~/.wine/drive_c/GOG\ Games/HoMM\ 3\ Complete/
      wine HD_Launcher.exe
      ```
    - Press `Create HD.exe` (you will see that HotA is now selected)
    - Choose Mode of `(stretchable) 32-bit OpenGL`
    - Choose `Full Screen Mode`
    - Press `Play`
    - Move the game window to another screen, go there click the game
      window title bar and press Win+f
