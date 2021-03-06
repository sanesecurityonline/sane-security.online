---
title: "Един phishing пример отблизо"
date: 2018-02-27T22:00:12+02:00
slug: пример за фишинг
draft: false
---

След като се запознахме с това що е [фишинг]({{< ref "phishing.md">}}), нека
онагледим понятието с един пресен реален пример, за нещо, което в момента има
шанс да получите.

Мейл твърдящ, че е изпратен от ePay, който иска да „потвърдите данните“ си. Ето
как изглежда въпросното писмо:

<a target="_blank" href="/images/a-phishing-example/epay-phishing.png">
![epay-phishing](/images/a-phishing-example/epay-phishing.png)</a>


## Как можем да се досетим?

Нерядко хората, които изпращат подобни съобщения, целящи да ви заблудят влагат
известно количество креативност и старание, така че съобщението да изглежда
трудно за разпознаване. В случая обаче изпращачите явно са заложили повече на
очаквания ефект на шок и притеснение, че нещо лошо може да се случи с достъпа ни
до услугата за онлайн разплащания. Има доста червени флагове, които да ни
подскажат, че някой се опитва да ни измами.

 * Съобщението е изпратено от 890876@cyberservices.com. Тук поне две неща правят
   впечатление. Името 890876 не изглежда на място, дори за адрес разпращащ
   автоматизирани мейли. По-важното обаче, домейна `cyberservices.com` няма нищо
   общо с ePay. Още тук трябва да сме силно скептични към съдържанието на мейла.
 * Адресът, който ни подканват да посетим е „подсекция“ на tumblr.com, което е
   всъщност сайт за хостинг на лични блогове.
 * Името epaybgsupport не е правилния начин, по който би изглеждал адреса на
   помощна страница. Адреса на страницата за помощ на ePay трябва да започва с
   основния адрес на сайта: https://epay.bg/
 * Никъде не се споменава име. Когато онлайн услуга изпраща мейли до
   регистрирани в нея клиенти, обикновено обръщението в началото включва име.
 * Странния изказ: „За новата година актуализацията на нашата банка е да ви
   уведомим...“, „За да продължите, трябва да попълните данните си само за
   сигурност.“

Както си личи някои критерии са доста по-субективни и е напълно възможно човек
да ги пропусне ако се притесни за сигурността на парите си и достъпа си до тях.

## Избора на жертви

Адресът, на който е получен въпросният мейл не е регистриран към акаунт в ePay.
Това означава, че най-вероятно организаторите на схемата нямат достъп до списък
с мейли на потребители.

Защо тогава този мейл е изпратен до този адрес? Най-вероятно адресът присъства в
някой „маркетингов“ списък с мейли. Такива списъци се продават с официалния
претекст, че целта им е да дадат достъп до потенциална публика, на която да
бъдат изпращани рекламни съобщения. В случая най-вероятно са филтрирани адресите
в такива списъци, които са в abv.bg. Причината за това най-вероятно е, че тъй
като това е български мейл хостинг, силно вероятно е немалка част от
потребителите му да имат акаунти в ePay.

## Какво ще открием на този линк?

**ВАЖНО**: Когато получите мейл, който изглежда съмнителен **не отваряйте
препратките** в него. Често пъти дори отварянето на тези връзки е възможно да ви
навреди по някакъв начин.

За да разгледаме каква е всъщност заплахата, последвахме написания в мейла
адрес. Адреса препраща към друг адрес, а не epay.bg. На този адрес ни се сервира
копие на началната страница на ePay. В този момент, ако гледаме само какво се
показва в браузъра е възможно да се подлъжем много лесно.

<a target="_blank" href="/images/a-phishing-example/epay-fake.png">
![epay-fake](/images/a-phishing-example/epay-fake.png)</a>

## Какво ще стане ако въведем името и паролата си в тази страница

Тази част от експеримента ще бъде само мислена. Нямаме на разположение ePay
акаунт, който да можем да жертваме.

Фалшивото копие на ePay ще изпрати потребителското име и парола, което въведете,
към сървър, който се контролира от нападателя, след което ще ви пренасочи към
истинския ePay. От гледна точка на жертвата ще изглежда все едно при въведени
коректни име и парола не е успял да се впише, най-вероятно ще опита пак, при
което успешно ще се впише.

От този момент нататък нападателя притежава името и паролата на жертвата и може
да влезе в акаунта им и да се разпорежда със средствата им.

## Предпазване

Вече споменахме по-горе как да забележим проблема с мейла. Ако все пак сме се
подвели, в общия случай можем да минимизираме щетите като следваме [стъпките описани в статията за фишинг]({{<ref "phishing.md#последствия-от-успешна-фишинг-атака-какво-да-направим">}}).

Конкретно в случая с ePay можем да се възползваме и от поддръжката им на
двуфакторно удостоверяване (2-factor authentication) с квалифициран електронен
подпис (КЕП). Ако имаме валиден КЕП, от настройките на ePay акаунта си можем да
зададем вписването да изисква освен името и паролата ни и присъствието на
въпросния КЕП.

Двуфакторното удостоверяване е нещо, което в бъдеще ще разгледаме в повече
детайли. Това е един от най-добрите начини да се предпазим от негативните
последствия дори ако бъдем заблудени от фишинг атака, тъй като името и паролата
ни няма да са достатъчни за получаване на контрол на акаунта ни.
