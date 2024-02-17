// This function sets our whole manual as its `body` and formats
// it as a simple fiction book.
#let manual(
  // The manual title.
  title: [Manual title],

  // The author.
  author: none,

  // The paper size to use.
  paper: none,

  // Details about the book's publisher that are
  // display on the second page.
  publishing-info: none,

  // The content.
  body,
) = {
  // Set the document's metadata.
  set document(title: title, author: author)

  set page(
      paper: paper,
      margin: (x: 2cm, y: 2cm),
  )

  set heading(numbering: "1.1.1")

  // Heading format
  show heading: it => {
    // Always start a H1 section on a new page
    if it.level == 1 { pagebreak() }
    v(0.5em)
    it
    v(0.3em)
  }

  set par(justify: true)

  set text(font: "Source Sans 3", size: 12pt)

  // Link formatting. To do: highlight external links differently, provide
  // section numbers for internal links, etc.
  show link: it => {
    set text(rgb("514089"))
    highlight(fill: rgb("51408922"), it)
  }

  // The first page.
  page(align(center + horizon)[
    #text(2em)[*#title*]
    #v(2em, weak: true)
    #text(1.6em, author)
  ])

  // Display our info at the bottom of the second page.
  if publishing-info != none {
    align(center + bottom, text(0.8em, publishing-info))
  }

  // Start with a chapter outline.
  outline(
    title: [Table of Contents],
    depth: 3,
    indent: true,
  )

  // Configure page properties.
  set page(
    numbering: "1/1",

    header: locate(loc => {
      // Query all level 1 headings and determine the current page number.
      let curr-page = counter(page).at(loc).first()
      let sections = query(heading.where(level: 1), loc)

      // Find if there's a level 1 heading starting on this page.
      let is-section-start = sections.any(h => h.location().page() == curr-page);

      // If a chapter starts on this page, only show the document title.
      if (is-section-start) {
        return smallcaps(title)
      }

      // Otherwise, find the last level 1 heading before this location, if any.
      let last-section = query(selector(heading.where(level: 1)).before(loc), loc).last()

      // Show title and that heading.
      smallcaps(title) + h(1fr) + smallcaps(last-section.body)
    }),
  )
  body
}

// Everything below is just to test

#show: manual.with(
  title: [Get Box V1 - User Guide],
  author: "Jangala",
  paper: "a5",
  publishing-info: [
    Jangala. \
    4-6a Hookers Road \
    London, E17 6DP

    #link("https://janga.la/")
  ],
)

= Introducing Get Box
<introduction.md__introducing-get-box>
Jangala’s Get Box is designed to provide effective internet access for
households and small groups. It’s designed to be easy to set up, provide
robust performance, and make the most of available data #footnote[Here
is the footnote.];.

#box(width: 100%, image("images/jangala-mission.svg"))



= Package Contents
<package-contents.md__package-contents>
#figure(
align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [#box(width: 100%, image("images/item1.svg")) Item 1 Caption],
  [#box(width: 100%, image("images/item2.svg")) Item 2 Caption],
  [#box(width: 100%, image("images/item3.svg")) Item 3 Caption],
  [#box(width: 100%, image("images/item4.svg")) Item 4 Caption],
  [#box(width: 100%, image("images/item5.svg")) Item 5 Caption],
  [#box(width: 100%, image("images/item6.svg")) Item 6 Caption],
)]
)



= Key Features
<features.md__key-features>
- #strong[Easy to Use];: Get Box is designed with simplicity in mind,
  ensuring that users can get online quickly without technical
  expertise.
- #strong[Flexible Connectivity];: Works with mobile nertworks or fixed
  sources of internet.
- #strong[Robust Performance];: Delivers reliable Wi-Fi coverage.

#box(width: 100%, image("images/get-box-features.svg"))



= Setting up Get Box
<quick-setup.md__setting-up-get-box>
+ Insert a SIM card into Get Box and/or connect the Get Box to another
  source of internet using the provided Ethernet cable.
+ Connect the Get Box to a power source.
+ Wait for the LED indicators to signal that it is fully operational.

#box(width: 100%, image("images/installation-process.svg"))

If you have issues setting up your Get Box please see the
#link(<troubleshooting.md__troubleshooting>)[troubleshooting] section



= Advanced Setup
<advanced-setup.md__advanced-setup>
== Accessing Get Box’s Control Centre
<advanced-setup.md__accessing-get-boxs-control-centre>
Get Box is a plug and play device. You can find information on the
connection, signal strength and more by connecting to Get Box’s Wi-Fi
network and typing the following address into your phone or laptop
browser:

```
http://172.28.1.1
```

This should take you to a screen like the one below

#box(width: 100%, image("images/control-centre.svg"))

#quote(block: true)[
\[!CAUTION\] Negative potential consequences of an action.
]

== Custom Wi-Fi Name and Password
<advanced-setup.md__custom-wi-fi-name-and-password>
\[TBD\]



= Troubleshooting
<troubleshooting.md__troubleshooting>
== Common Issues
<troubleshooting.md__common-issues>
- #strong[Power Issues];: Ensure the Get Box is connected to a working
  power outlet.
- #strong[Connectivity Issues];: If the lights on Get Box flash on and
  off all together, then there is no connection, either through the
  modem or through a wired connection.

#box(width: 100%, image("images/troubleshooting-tips.svg"))



= Technical Specifications
<technical-specifications.md__technical-specifications>
- #strong[Model];: Get Box v1
- #strong[Network Compatibility];: LTE cat 4, up to 40 Mbps
- #strong[Wi-Fi Capacity];: Supports up to 20 users
- #strong[Power Requirements];: AC 110-240V, 50/60Hz

#box(width: 100%, image("images/technical-specifications.svg"))



= Appendix
<appendix.md__appendix>
== A: Firmware Updates
<appendix.md__a-firmware-updates>
Keeping your Get Box updated ensures you have the latest features and
security enhancements. Your firmware will update automatically.

== B: Legal and Safety Information
<appendix.md__b-legal-and-safety-information>
The Get Box complies with all relevant safety and regulatory standards.

#box(width: 100%, image("images/appendix-information.svg"))
