# Amazon Web Services (AWS) Route 53 Top-Level Domain (TLD) Registrations

A small PowerShell script to test which of the TLDs available for registration that are held by AWS for their brand.

## Introduction

During my research into Route 53 and domain registration, I decided to see if [https://aws.guru](https://aws.guru) was available for registration.

As suspected, it redirected to [https://aws.amazon.com](https://aws.amazon.com). I decided to test a half-dozen more of the available TLDs and achieved the same result.

To see if AWS was squatting on http://aws.* for every TLD available, I wrote a script to do the heavy lifting for me.

## Result

Of the 320 Generic and Geographic top-level domains available for registration through AWS, 263 (80%) have a registered domain for redirect to [https://aws.amazon.com/*](https://aws.amazon.com/) and 53 (20%) provide no or a Bad Response.

## Operation

This script is hard-coded to parse content from [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) but can easily be modified to look for a URL REGEXs for other sites if desired.

## Usage

Download this repo run [Get-AWSUrls.ps1](Get-AWSURLs.ps1) to generate a CSV of all AWS owned TLDs and their destinations.

```ps

./Get-AWSUrls.ps1

```

## Results

List of the destinations for each URL registered by AWS.

- [Registered-URLs](#Registered-URLs)
- [Unregistered-URLs](#Unregistered-URLs)

### Registered URLs

| URL                      |  Destination                                                                                                          | 
|--------------------------|-----------------------------------------------------------------------------------------------------------------------| 
| http://aws.academy       |  https://www.aws.training/                                                                                            | 
| http://aws.accountants   |  https://aws.amazon.com/                                                                                              | 
| http://aws.agency        |  https://aws.amazon.com/                                                                                              | 
| http://aws.apartments    |  https://aws.amazon.com/                                                                                              | 
| http://aws.associates    |  https://aws.amazon.com/                                                                                              | 
| http://aws.auction       |  https://aws.amazon.com/                                                                                              | 
| http://aws.audio         |  https://aws.amazon.com/                                                                                              | 
| http://aws.band          |  https://aws.amazon.com/                                                                                              | 
| http://aws.bargains      |  https://aws.amazon.com/                                                                                              | 
| http://aws.bike          |  https://aws.amazon.com/                                                                                              | 
| http://aws.bingo         |  https://aws.amazon.com/                                                                                              | 
| http://aws.biz           |  http://aws.biz/                                                                                                      | 
| http://aws.black         |  https://aws.amazon.com/                                                                                              | 
| http://aws.blue          |  https://aws.amazon.com/                                                                                              | 
| http://aws.boutique      |  https://aws.amazon.com/                                                                                              | 
| http://aws.builders      |  https://aws.amazon.com/                                                                                              | 
| http://aws.business      |  https://aws.amazon.com/                                                                                              | 
| http://aws.buzz          |  https://aws.amazon.com/                                                                                              | 
| http://aws.cab           |  https://aws.amazon.com/                                                                                              | 
| http://aws.cafe          |  https://aws.amazon.com/                                                                                              | 
| http://aws.camera        |  https://www.amazon.com/exec/obidos/tg/browse/-/502394                                                                | 
| http://aws.camp          |  https://www.amazon.com/b/?node=3400371                                                                               | 
| http://aws.cards         |  https://aws.amazon.com/                                                                                              | 
| http://aws.care          |  https://aws.amazon.com/                                                                                              | 
| http://aws.careers       |  https://aws.amazon.com/careers/                                                                                      | 
| http://aws.cash          |  https://aws.amazon.com/                                                                                              | 
| http://aws.casino        |  https://aws.amazon.com/                                                                                              | 
| http://aws.catering      |  https://aws.amazon.com/                                                                                              | 
| http://aws.cc            |  https://aws.amazon.com/                                                                                              | 
| http://aws.center        |  https://aws.amazon.com/                                                                                              | 
| http://aws.ceo           |  https://aws.amazon.com/                                                                                              | 
| http://aws.chat          |  https://aws.amazon.com/                                                                                              | 
| http://aws.cheap         |  https://aws.amazon.com/                                                                                              | 
| http://aws.church        |  https://aws.amazon.com/                                                                                              | 
| http://aws.city          |  https://aws.amazon.com/                                                                                              | 
| http://aws.claims        |  https://aws.amazon.com/                                                                                              | 
| http://aws.click         |  https://aws.amazon.com/                                                                                              | 
| http://aws.clinic        |  https://aws.amazon.com/                                                                                              | 
| http://aws.clothing      |  https://www.amazon.com/b/ref=fs_xg_xgl_lp_surl?node=7141123011                                                       | 
| http://aws.cloud         |  https://aws.amazon.com/                                                                                              | 
| http://aws.club          |  https://aws.amazon.com/                                                                                              | 
| http://aws.coach         |  https://aws.amazon.com/                                                                                              | 
| http://aws.codes         |  https://aws.amazon.com/                                                                                              | 
| http://aws.coffee        |  https://aws.coffee/                                                                                                  | 
| http://aws.college       |  https://aws.amazon.com/                                                                                              | 
| http://aws.com           |  https://aws.amazon.com/                                                                                              | 
| http://aws.community     |  https://aws.amazon.com/                                                                                              | 
| http://aws.company       |  https://aws.amazon.com/                                                                                              | 
| http://aws.condos        |  https://aws.amazon.com/                                                                                              | 
| http://aws.construction  |  https://aws.amazon.com/                                                                                              | 
| http://aws.consulting    |  https://aws.amazon.com/partners/premier/                                                                             | 
| http://aws.contractors   |  https://aws.amazon.com/                                                                                              | 
| http://aws.cool          |  https://aws.amazon.com/                                                                                              | 
| http://aws.coupons       |  https://aws.amazon.com/                                                                                              | 
| http://aws.credit        |  https://aws.amazon.com/                                                                                              | 
| http://aws.creditcard    |  https://aws.amazon.com/                                                                                              | 
| http://aws.dance         |  https://aws.amazon.com/                                                                                              | 
| http://aws.dating        |  https://aws.amazon.com/                                                                                              | 
| http://aws.deals         |  https://aws.amazon.com/                                                                                              | 
| http://aws.delivery      |  https://aws.amazon.com/                                                                                              | 
| http://aws.democrat      |  https://aws.amazon.com/                                                                                              | 
| http://aws.dental        |  https://aws.amazon.com/                                                                                              | 
| http://aws.diamonds      |  https://aws.amazon.com/                                                                                              | 
| http://aws.diet          |  https://aws.amazon.com/                                                                                              | 
| http://aws.digital       |  https://aws.amazon.com/                                                                                              | 
| http://aws.direct        |  https://aws.amazon.com/                                                                                              | 
| http://aws.directory     |  https://aws.amazon.com/                                                                                              | 
| http://aws.discount      |  https://aws.amazon.com/                                                                                              | 
| http://aws.dog           |  https://aws.amazon.com/                                                                                              | 
| http://aws.domains       |  http://www.nic.aws/                                                                                                  | 
| http://aws.email         |  https://aws.amazon.com/workmail/                                                                                     | 
| http://aws.energy        |  https://aws.amazon.com/about-aws/sustainability/                                                                     | 
| http://aws.engineering   |  https://aws.amazon.com/certification/certified-devops-engineer-professional/                                         | 
| http://aws.enterprises   |  https://aws.amazon.com/enterprise/                                                                                   | 
| http://aws.equipment     |  https://aws.amazon.com/                                                                                              | 
| http://aws.estate        |  https://aws.amazon.com/                                                                                              | 
| http://aws.events        |  https://aws.amazon.com/events/                                                                                       | 
| http://aws.exchange      |  https://aws.amazon.com/                                                                                              | 
| http://aws.expert        |  https://aws.amazon.com/                                                                                              | 
| http://aws.exposed       |  https://aws.amazon.com/                                                                                              | 
| http://aws.express       |  https://aws.amazon.com/                                                                                              | 
| http://aws.fail          |  https://aws.amazon.com/                                                                                              | 
| http://aws.farm          |  https://aws.amazon.com/device-farm/                                                                                  | 
| http://aws.finance       |  https://aws.amazon.com/                                                                                              | 
| http://aws.financial     |  https://aws.amazon.com/                                                                                              | 
| http://aws.fish          |  https://aws.amazon.com/                                                                                              | 
| http://aws.fitness       |  https://aws.amazon.com/                                                                                              | 
| http://aws.flowers       |  https://aws.amazon.com/                                                                                              | 
| http://aws.fm            |  http://aws.fm/                                                                                                       | 
| http://aws.football      |  https://aws.amazon.com/                                                                                              | 
| http://aws.forsale       |  https://aws.amazon.com/                                                                                              | 
| http://aws.foundation    |  https://aws.amazon.com/                                                                                              | 
| http://aws.fund          |  https://aws.amazon.com/                                                                                              | 
| http://aws.furniture     |  https://www.amazon.com/exec/obidos/tg/browse/-/1063306                                                               | 
| http://aws.fyi           |  https://aws.amazon.com/                                                                                              | 
| http://aws.gallery       |  https://aws.amazon.com/                                                                                              | 
| http://aws.gift          |  https://aws.amazon.com/                                                                                              | 
| http://aws.gifts         |  https://www.amazon.com/gp/most-gifted/                                                                               | 
| http://aws.glass         |  https://aws.amazon.com/                                                                                              | 
| http://aws.gold          |  https://aws.amazon.com/                                                                                              | 
| http://aws.golf          |  https://aws.amazon.com/                                                                                              | 
| http://aws.graphics      |  https://aws.amazon.com/appstream2/                                                                                   | 
| http://aws.gratis        |  https://aws.amazon.com/                                                                                              | 
| http://aws.gripe         |  https://aws.amazon.com/                                                                                              | 
| http://aws.guide         |  https://aws.amazon.com/                                                                                              | 
| http://aws.guitars       |  https://aws.amazon.com/                                                                                              | 
| http://aws.guru          |  https://aws.amazon.com/                                                                                              | 
| http://aws.haus          |  https://aws.amazon.com/                                                                                              | 
| http://aws.healthcare    |  https://aws.amazon.com/                                                                                              | 
| http://aws.help          |  https://console.aws.amazon.com/support/home#/                                                                        | 
| http://aws.hiv           |  https://aws.amazon.com/                                                                                              | 
| http://aws.holdings      |  https://aws.amazon.com/                                                                                              | 
| http://aws.holiday       |  https://aws.amazon.com/                                                                                              | 
| http://aws.host          |  https://aws.amazon.com/                                                                                              | 
| http://aws.hosting       |  https://aws.amazon.com/                                                                                              | 
| http://aws.house         |  https://aws.amazon.com/                                                                                              | 
| http://aws.immo          |  https://aws.amazon.com/                                                                                              | 
| http://aws.immobilien    |  https://aws.amazon.com/                                                                                              | 
| http://aws.industries    |  https://aws.amazon.com/                                                                                              | 
| http://aws.ink           |  https://aws.amazon.com/                                                                                              | 
| http://aws.institute     |  https://aws.amazon.com/                                                                                              | 
| http://aws.insure        |  https://aws.amazon.com/                                                                                              | 
| http://aws.international |  https://aws.amazon.com/                                                                                              | 
| http://aws.investments   |  https://aws.amazon.com/                                                                                              | 
| http://aws.irish         |  https://aws.amazon.com/                                                                                              | 
| http://aws.jewelry       |  https://aws.amazon.com/                                                                                              | 
| http://aws.juegos        |  https://aws.amazon.com/                                                                                              | 
| http://aws.kaufen        |  https://aws.amazon.com/                                                                                              | 
| http://aws.kim           |  https://aws.amazon.com/                                                                                              | 
| http://aws.kitchen       |  https://www.amazon.com/b?ie=UTF8&node=284507                                                                         | 
| http://aws.kiwi          |  https://aws.amazon.com/                                                                                              | 
| http://aws.land          |  https://aws.amazon.com/                                                                                              | 
| http://aws.lease         |  https://aws.amazon.com/                                                                                              | 
| http://aws.legal         |  https://aws.amazon.com/                                                                                              | 
| http://aws.lgbt          |  https://aws.amazon.com/                                                                                              | 
| http://aws.life          |  https://aws.amazon.com/                                                                                              | 
| http://aws.lighting      |  https://www.amazon.com/b?node=495224                                                                                 | 
| http://aws.limited       |  https://aws.amazon.com/                                                                                              | 
| http://aws.limo          |  https://aws.amazon.com/                                                                                              | 
| http://aws.link          |  https://aws.amazon.com/                                                                                              | 
| http://aws.live          |  https://aws.amazon.com/                                                                                              | 
| http://aws.loan          |  https://aws.amazon.com/                                                                                              | 
| http://aws.loans         |  https://aws.amazon.com/                                                                                              | 
| http://aws.lol           |  https://aws.amazon.com/                                                                                              | 
| http://aws.maison        |  https://aws.amazon.com/                                                                                              | 
| http://aws.management    |  https://aws.amazon.com/                                                                                              | 
| http://aws.marketing     |  https://aws.amazon.com/                                                                                              | 
| http://aws.mba           |  https://aws.amazon.com/                                                                                              | 
| http://aws.media         |  https://aws.amazon.com/                                                                                              | 
| http://aws.memorial      |  https://aws.amazon.com/                                                                                              | 
| http://aws.mobi          |  https://www.amazon.com/ref=as_li_ss_tl?ie=UTF8&linkCode=sl2&tag=amznipops-20&linkId=ef33ef1998890bd8a89ba9c3007fa6cd | 
| http://aws.moda          |  https://aws.amazon.com/                                                                                              | 
| http://aws.money         |  https://aws.amazon.com/                                                                                              | 
| http://aws.mortgage      |  https://aws.amazon.com/                                                                                              | 
| http://aws.movie         |  https://aws.amazon.com/media/                                                                                        | 
| http://aws.network       |  https://aws.amazon.com/                                                                                              | 
| http://aws.news          |  https://aws.amazon.com/new/                                                                                          | 
| http://aws.ninja         |  https://aws.amazon.com/                                                                                              | 
| http://aws.onl           |  https://aws.amazon.com/                                                                                              | 
| http://aws.online        |  https://aws.amazon.com/                                                                                              | 
| http://aws.org           |  https://www.aws.org/                                                                                                 | 
| http://aws.partners      |  https://aws.amazon.com/                                                                                              | 
| http://aws.parts         |  https://aws.amazon.com/                                                                                              | 
| http://aws.pics          |  https://aws.amazon.com/                                                                                              | 
| http://aws.pictures      |  https://aws.amazon.com/                                                                                              | 
| http://aws.pink          |  https://aws.amazon.com/                                                                                              | 
| http://aws.pizza         |  https://aws.amazon.com/                                                                                              | 
| http://aws.place         |  https://aws.amazon.com/                                                                                              | 
| http://aws.plumbing      |  https://aws.amazon.com/                                                                                              | 
| http://aws.plus          |  https://aws.amazon.com/                                                                                              | 
| http://aws.productions   |  https://aws.amazon.com/                                                                                              | 
| http://aws.properties    |  https://aws.amazon.com/                                                                                              | 
| http://aws.property      |  http://aws.property/                                                                                                 | 
| http://aws.pub           |  https://aws.amazon.com/                                                                                              | 
| http://aws.recipes       |  https://aws.amazon.com/                                                                                              | 
| http://aws.red           |  https://aws.amazon.com/                                                                                              | 
| http://aws.reisen        |  https://aws.amazon.com/                                                                                              | 
| http://aws.repair        |  https://aws.amazon.com/                                                                                              | 
| http://aws.report        |  https://aws.amazon.com/                                                                                              | 
| http://aws.republican    |  https://aws.amazon.com/                                                                                              | 
| http://aws.restaurant    |  https://aws.amazon.com/                                                                                              | 
| http://aws.reviews       |  https://aws.amazon.com/                                                                                              | 
| http://aws.rip           |  https://aws.amazon.com/                                                                                              | 
| http://aws.rocks         |  https://aws.amazon.com/                                                                                              | 
| http://aws.run           |  https://aws.amazon.com/                                                                                              | 
| http://aws.sale          |  https://aws.amazon.com/                                                                                              | 
| http://aws.sarl          |  https://aws.amazon.com/                                                                                              | 
| http://aws.schule        |  https://aws.amazon.com/                                                                                              | 
| http://aws.services      |  https://aws.amazon.com/                                                                                              | 
| http://aws.sex           |  https://aws.amazon.com/                                                                                              | 
| http://aws.sexy          |  https://aws.amazon.com/                                                                                              | 
| http://aws.shiksha       |  https://aws.amazon.com/                                                                                              | 
| http://aws.show          |  https://aws.amazon.com/                                                                                              | 
| http://aws.singles       |  https://aws.amazon.com/                                                                                              | 
| http://aws.soccer        |  https://aws.amazon.com/                                                                                              | 
| http://aws.social        |  https://aws.amazon.com/                                                                                              | 
| http://aws.solar         |  https://aws.amazon.com/about-aws/sustainability/                                                                     | 
| http://aws.solutions     |  https://aws.amazon.com/                                                                                              | 
| http://aws.studio        |  https://aws.amazon.com/                                                                                              | 
| http://aws.style         |  https://aws.amazon.com/                                                                                              | 
| http://aws.supplies      |  https://aws.amazon.com/                                                                                              | 
| http://aws.supply        |  https://aws.amazon.com/                                                                                              | 
| http://aws.surgery       |  https://aws.amazon.com/                                                                                              | 
| http://aws.systems       |  https://aws.amazon.com/                                                                                              | 
| http://aws.tattoo        |  https://aws.amazon.com/                                                                                              | 
| http://aws.tax           |  https://aws.amazon.com/                                                                                              | 
| http://aws.taxi          |  https://aws.amazon.com/                                                                                              | 
| http://aws.team          |  https://aws.amazon.com/                                                                                              | 
| http://aws.technology    |  https://aws.amazon.com/                                                                                              | 
| http://aws.tennis        |  https://aws.amazon.com/                                                                                              | 
| http://aws.theater       |  https://aws.amazon.com/                                                                                              | 
| http://aws.tienda        |  https://aws.amazon.com/                                                                                              | 
| http://aws.tips          |  https://aws.amazon.com/                                                                                              | 
| http://aws.tires         |  https://aws.amazon.com/                                                                                              | 
| http://aws.today         |  https://aws.amazon.com/                                                                                              | 
| http://aws.tools         |  https://aws.amazon.com/tools/                                                                                        | 
| http://aws.tours         |  https://aws.amazon.com/                                                                                              | 
| http://aws.town          |  https://aws.amazon.com/                                                                                              | 
| http://aws.toys          |  https://aws.amazon.com/                                                                                              | 
| http://aws.trade         |  https://aws.amazon.com/                                                                                              | 
| http://aws.training      |  https://www.aws.training/                                                                                            | 
| http://aws.tv            |  https://aws.amazon.com/                                                                                              | 
| http://aws.university    |  https://www.aws.training/                                                                                            | 
| http://aws.uno           |  https://aws.amazon.com/                                                                                              | 
| http://aws.vegas         |  https://aws.amazon.com/                                                                                              | 
| http://aws.ventures      |  https://aws.amazon.com/                                                                                              | 
| http://aws.viajes        |  https://aws.amazon.com/                                                                                              | 
| http://aws.video         |  https://aws.amazon.com/media/                                                                                        | 
| http://aws.vision        |  https://aws.amazon.com/                                                                                              | 
| http://aws.voyage        |  https://aws.amazon.com/                                                                                              | 
| http://aws.watch         |  https://aws.amazon.com/                                                                                              | 
| http://aws.website       |  https://aws.amazon.com/                                                                                              | 
| http://aws.wiki          |  https://aws.amazon.com/                                                                                              | 
| http://aws.works         |  https://aws.amazon.com/                                                                                              | 
| http://aws.world         |  https://aws.amazon.com/                                                                                              | 
| http://aws.wtf           |  https://aws.amazon.com/                                                                                              | 
| http://aws.xyz           |  https://aws.amazon.com/                                                                                              | 
| http://aws.zone          |  https://aws.amazon.com/                                                                                              | 
| http://aws.co.za         |  http://aws.co.za/                                                                                                    | 
| http://aws.ca            |  http://www.aws.ca/                                                                                                   | 
| http://aws.co            |  https://aws.amazon.com/                                                                                              | 
| http://aws.com.mx        |  http://aws.com.mx/                                                                                                   | 
| http://aws.vc            |  http://aws.vc/                                                                                                       | 
| http://aws.cc            | https://aws.amazon.com/                                                                                               | 
| http://aws.co.nz         |  https://www.awslegal.com/                                                                                            | 
| http://aws.com.au        |  http://aws.com.au/                                                                                                   | 
| http://aws.com.sg        |  http://aws.com.sg/                                                                                                   | 
| http://aws.in            |  http://aws.in/                                                                                                       | 
| http://aws.net.au        |  http://aws.net.au/                                                                                                   | 
| http://aws.org.nz        |  http://aws.org.nz/                                                                                                   | 
| http://aws.sg            |  https://www.amazon.com/ref=as_li_ss_tl?ie=UTF8&linkCode=sl2&tag=amznipops-20&linkId=ef33ef1998890bd8a89ba9c3007fa6cd | 
| http://aws.be            |  http://aws-hydroseeding.com/                                                                                         | 
| http://aws.berlin        |  https://aws.amazon.com/                                                                                              | 
| http://aws.ch            |  https://www.aws.ch/                                                                                                  | 
| http://aws.cz            |  http://aws.cz/                                                                                                       | 
| http://aws.de            |  https://krankenpflege-schwarz.de/?page=home                                                                          | 
| http://aws.es            |  http://aws.es/                                                                                                       | 
| http://aws.eu            |  https://www.dconsiteremediation.com/                                                                                 | 
| http://aws.fi            |  http://aws.fi/                                                                                                       | 
| http://aws.gg            |  http://aws.gg/                                                                                                       | 
| http://aws.me            |  https://aws.amazon.com/                                                                                              | 
| http://aws.nl            |  http://aws.nl/                                                                                                       | 
| http://aws.org.uk        |  http://aws.org.uk/                                                                                                   | 
| http://aws.ruhr          |  https://aws.amazon.com/                                                                                              | 
| http://aws.se            |  http://aws.se/                                                                                                       | 
| http://aws.uk            |  http://buydomainnames.co.uk/domain/aws.uk                                                                            | 
| http://aws.wien          |  https://aws.amazon.com/                                                                                              | 


### Unregistered URLs

| URL                    |  Destination | 
|------------------------|--------------| 
| http://aws.ac          |  BAD REQUEST | 
| http://aws.adult       |  BAD REQUEST | 
| http://aws.camp        |  BAD REQUEST | 
| http://aws.cleaning    |  BAD REQUEST | 
| http://aws.computer    |  BAD REQUEST | 
| http://aws.cruises     |  BAD REQUEST | 
| http://aws.education   |  BAD REQUEST | 
| http://aws.flights     |  BAD REQUEST | 
| http://aws.florist     |  BAD REQUEST | 
| http://aws.futbol      |  BAD REQUEST | 
| http://aws.global      |  BAD REQUEST | 
| http://aws.green       |  BAD REQUEST | 
| http://aws.hockey      |  BAD REQUEST | 
| http://aws.im          |  BAD REQUEST | 
| http://aws.info        |  BAD REQUEST | 
| http://aws.io          |  BAD REQUEST | 
| http://aws.name        |  BAD REQUEST | 
| http://aws.net         |  BAD REQUEST | 
| http://aws.photo       |  BAD REQUEST | 
| http://aws.photography |  BAD REQUEST | 
| http://aws.photos      |  BAD REQUEST | 
| http://aws.poker       |  BAD REQUEST | 
| http://aws.porn        |  BAD REQUEST | 
| http://aws.pro         |  BAD REQUEST | 
| http://aws.qpon        |  BAD REQUEST | 
| http://aws.reise       |  BAD REQUEST | 
| http://aws.rentals     |  BAD REQUEST | 
| http://aws.school      |  BAD REQUEST | 
| http://aws.shoes       |  BAD REQUEST | 
| http://aws.sucks       |  BAD REQUEST | 
| http://aws.support     |  BAD REQUEST | 
| http://aws.vacations   |  BAD REQUEST | 
| http://aws.vg          |  BAD REQUEST | 
| http://aws.villas      |  BAD REQUEST | 
| http://aws.ac          |  BAD REQUEST | 
| http://aws.sh          |  BAD REQUEST | 
| http://aws.cl          |  BAD REQUEST | 
| http://aws.com.ar      |  BAD REQUEST | 
| http://aws.com.br      |  BAD REQUEST | 
| http://aws.mx          |  BAD REQUEST | 
| http://aws.us          |  BAD REQUEST | 
| http://aws.vg          |  BAD REQUEST | 
| http://aws.fm          |  BAD REQUEST | 
| http://aws.jp          |  BAD REQUEST | 
| http://aws.io          |  BAD REQUEST | 
| http://aws.net.nz      |  BAD REQUEST | 
| http://aws.qa          |  BAD REQUEST | 
| http://aws.ru          |  BAD REQUEST | 
| http://aws.co.uk       |  BAD REQUEST | 
| http://aws.fr          |  BAD REQUEST | 
| http://aws.im          |  BAD REQUEST | 
| http://aws.it          |  BAD REQUEST | 
| http://aws.me.uk       |  BAD REQUEST | 
