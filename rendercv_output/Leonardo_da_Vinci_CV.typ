// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Leonardo da Vinci",
  title: "Leonardo da Vinci - CV",
  footer: context { [Leonardo da Vinci -- #str(here().page())\/#str(counter(page).final().first())] },
  top-note: [ #emph[Last updated in Apr 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 2cm,
  page-bottom-margin: 2cm,
  page-left-margin: 2cm,
  page-right-margin: 2cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(74, 111, 165),
  colors-headline: rgb(74, 111, 165),
  colors-connections: rgb(74, 111, 165),
  colors-section-titles: rgb(74, 111, 165),
  colors-links: rgb(74, 111, 165),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Serif 4",
  typography-font-family-name: "Source Serif 4",
  typography-font-family-headline: "Source Serif 4",
  typography-font-family-connections: "Source Serif 4",
  typography-font-family-section-titles: "Source Serif 4",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.3cm,
  header-space-below-headline: 0.3cm,
  header-space-below-connections: 0.3cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.3cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.2cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0.4cm,
  entries-highlights-space-above: 0.10cm,
  entries-highlights-space-between-items: 0.10cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 19,
  ),
)


= Leonardo da Vinci

#connections(
  [#connection-with-icon("location-dot")[Florence, Republic of Florence]],
  [#link("mailto:leonardo@vincian.art", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[leonardo\@vincian.art]]],
  [#link("tel:+39-055-000-0000", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[055 000 0000]]],
  [#link("https://en.wikipedia.org/wiki/Leonardo_da_Vinci", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[en.wikipedia.org\/wiki\/Leonardo\_da\_Vinci]]],
  [#link("https://github.com/leonardodavinci", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[github.com\/leonardodavinci]]],
  [#link("https://linkedin.com/in/leonardodavinci", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[linkedin.com\/in\/leonardodavinci]]],
)


== Summary

Polymath and Renaissance man with 40+ years of experience spanning painting, sculpture, architecture, engineering, anatomy, and natural philosophy. Renowned for integrating rigorous scientific observation with artistic mastery. Proven track record delivering iconic works for high-profile patrons including the Medici and Sforza courts. Seeking challenging commissions at the intersection of art, science, and engineering.

== Experience

#regular-entry(
  [
    #strong[Chief Engineer, Architect & Court Painter], Court of Ludovico Sforza -- Milan, Duchy of Milan

  ],
  [
    Jan 1482 – Sept 1499

  ],
  main-column-second-row: [
    - Designed innovative military machines including armored vehicles, multi-barreled cannons, and siege equipment

    - Painted #emph[The Last Supper] (1495–1498), a 15×29 ft mural considered one of the greatest works in Western art

    - Engineered canal lock systems and urban planning proposals for Milan's expansion

    - Sculpted the #emph[Gran Cavallo], a 24-foot bronze horse model (largest equestrian statue of its era)

    - Organized court spectacles, pageants, and theatrical productions for diplomatic events

  ],
)

#regular-entry(
  [
    #strong[Artist & Engineer], Florentine Republic (Independent Practice) -- Florence, Republic of Florence

  ],
  [
    Jan 1500 – June 1506

  ],
  main-column-second-row: [
    - Painted #emph[Mona Lisa] (c. 1503), achieving unprecedented sfumato technique for atmospheric realism

    - Produced #emph[Virgin and Child with Saint Anne] and began #emph[Battle of Anghiari] mural commission

    - Conducted systematic anatomical studies via human dissections, producing 240+ anatomical drawings

    - Collaborated with Niccolò Machiavelli on an ambitious canal project to divert the Arno River

  ],
)

#regular-entry(
  [
    #strong[Military Architect & Engineer], House of Borgia -- Central Italy

  ],
  [
    May 1502 – Mar 1503

  ],
  main-column-second-row: [
    - Served as chief military engineer under Cesare Borgia, surveying fortifications across Central Italy

    - Produced accurate topographical maps of Imola and the Val di Chiana, pioneering cartographic technique

    - Designed bridge improvements, harbor plans, and defensive fortification upgrades

  ],
)

#regular-entry(
  [
    #strong[Premier Painter, Engineer & Architect of the King], King Francis I of France -- Amboise, Kingdom of France

  ],
  [
    Jan 1516 – May 1519

  ],
  main-column-second-row: [
    - Provided intellectual companionship and counsel to the French crown on art, science, and philosophy

    - Designed the Château de Romorantin and contributed concepts to Château de Chambord

    - Continued scientific research and writing, compiling treatises on painting, anatomy, and hydraulics

    - Received annual pension of 1,000 scudi — a recognition of lifetime achievement

  ],
)

== Education

#education-entry(
  [
    #strong[Workshop of Andrea del Verrocchio], Apprenticeship in Painting, Sculpture & Goldsmithing -- Florence, Republic of Florence

  ],
  [
    1466 – 1478

  ],
  main-column-second-row: [
    - Trained under the leading Florentine master in all fine arts and engineering disciplines

    - Achieved guild membership in the Compagnia di San Luca (1472)

    - Surpassed master in technical skill; Verrocchio reportedly retired from painting upon seeing Leonardo's angel in #emph[Baptism of Christ]

  ],
)

== Skills

#strong[Fine Arts:] Oil painting, fresco, tempera, sfumato technique, perspective geometry, sculpture, bronze casting, drawing

#strong[Engineering & Architecture:] Hydraulic engineering, military fortifications, urban planning, mechanical design, bridge engineering, canal systems

#strong[Scientific Disciplines:] Human anatomy, botany, geology, optics, hydrodynamics, aerodynamics, astronomy, cartography

#strong[Tools & Instruments:] Silverpoint, red chalk, pen & ink, camera obscura, lathe, printing press concepts, measuring instruments

#strong[Languages:] Italian (native), Latin (reading), some French

== Publications

#regular-entry(
  [
    #strong[Codex Atlanticus: Engineering & Scientific Observations]

  ],
  [
    1478-1519

  ],
  main-column-second-row: [
    #summary[1,119 leaves covering mechanics, optics, hydraulics, astronomy, and natural philosophy]

    Leonardo da Vinci

    (Manuscript Collection, Biblioteca Ambrosiana)

  ],
)

#regular-entry(
  [
    #strong[Trattato della Pittura (Treatise on Painting)]

  ],
  [
    1498

  ],
  main-column-second-row: [
    #summary[Foundational treatise on light, shadow, color, perspective, and composition still studied today]

    Leonardo da Vinci

    (Compiled manuscript (published posthumously 1651))

  ],
)

#regular-entry(
  [
    #strong[Anatomical Drawings & Studies]

  ],
  [
    1489-1513

  ],
  main-column-second-row: [
    #summary[240+ sheets of anatomical drawings based on dissection of 30+ human cadavers]

    Leonardo da Vinci

    (Royal Collection, Windsor Castle)

  ],
)

== Projects

#regular-entry(
  [
    #strong[Mona Lisa]

  ],
  [
    1503-1519

  ],
  main-column-second-row: [
    - Oil on poplar panel; pioneered sfumato and aerial perspective techniques

    - Considered the world's most visited and recognized painting (Louvre, Paris)

  ],
)

#regular-entry(
  [
    #strong[The Last Supper]

  ],
  [
    1495-1498

  ],
  main-column-second-row: [
    - Tempera and oil on plaster; 460 × 880 cm mural in Santa Maria delle Grazie, Milan

    - UNESCO World Heritage Site; revolutionary composition depicting the moment of betrayal

  ],
)

#regular-entry(
  [
    #strong[Vitruvian Man]

  ],
  [
    Jan 1490

  ],
  main-column-second-row: [
    - Ink on paper; canonical study of human proportions based on Vitruvius

    - Defines the intersection of geometry and human anatomy; cultural icon for science and art

  ],
)

#regular-entry(
  [
    #strong[Flying Machine Designs]

  ],
  [
    1485-1505

  ],
  main-column-second-row: [
    - Designed ornithopter, aerial screw (proto-helicopter), hang glider, and parachute

    - Studies of bird flight informed all aerodynamic concepts, predating practical aviation by 400 years

  ],
)

== Awards

#strong[Commissioned by the Medici:] Multiple commissions from Lorenzo de' Medici, 1478-1481

#strong[Appointed Premier Painter to the King of France:] King Francis I, 1516 — highest artistic honor in Europe

#strong[Honorary Citizen of Milan:] Duchy of Milan, 1490 — for contributions to engineering and culture
