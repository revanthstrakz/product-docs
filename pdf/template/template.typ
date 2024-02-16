#let conf(
    title: "",
    authors: "",
    body
) = {

    set page(
        paper: "a5",
        margin: (x: 2cm, y: 2cm),
    )

    set heading(numbering: "1.1.1")
    show heading: it => block[
        #v(0.5em)
        #it.body
        #v(0.3em)
    ]

    set par(justify: true)

    set text(font: "Source Sans 3", size: 12pt)

    v(1fr)
    align(right)[
        #text(title, size: 30pt)

        #text(authors, size: 15pt)
    ]
    v(1fr)
    pagebreak()

    counter(page).update(0)
        
    outline(
        title: "Table of Contents",
        depth: 3,
        indent: true,
        fill: repeat[.]
    )

    page(footer: [
            #align(center)[#line(length: 100%, angle: 0deg)]
            #set align(right)
            #set text(8pt)
            #counter(page).display(
                "1 / 1",
                both: true,
            )
        ],
        body
    )
}

// Everything below is just to test

#show: doc => conf(
  title: "Get Box V1 - Instructions",
  authors: "Jangala",
  doc,
)

#block[
= Introducing Get Box
<docs__get-box__1-introduction.md__introducing-get-box>
Jangala’s Get Box is designed to provide effective internet access for
households and small groups. It’s designed to be easy to set up, provide
solid performance, and make the most of available data #footnote[Here
is the footnote.];.

#box(width: 100%, image("images/jangala-mission.svg"))

] <docs__get-box__1-introduction.md>
#block[
= Package Contents
<docs__get-box__2-package-contents.md__package-contents>
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

] <docs__get-box__2-package-contents.md>
#block[
= Key Features
<docs__get-box__3-features.md__key-features>
- #strong[Easy to Use];: Get Box is designed with simplicity in mind,
  ensuring that users can get online quickly without technical
  expertise.
- #strong[Flexible Connectivity];: Works with mobile nertworks or fixed
  sources of internet.
- #strong[Robust Performance];: Delivers reliable Wi-Fi coverage.

#box(width: 100%, image("images/get-box-features.svg"))

] <docs__get-box__3-features.md>
#block[
= Setting up Get Box
<docs__get-box__4-quick-setup.md__setting-up-get-box>
+ Insert a SIM card into Get Box and/or connect the Get Box to another
  source of internet using the provided Ethernet cable.
+ Connect the Get Box to a power source.
+ Wait for the LED indicators to signal that it is fully operational.

#box(width: 100%, image("images/installation-process.svg"))

If you have issues setting up your Get Box please see the
#link("6-troubleshooting.md#troubleshooting")[troubleshooting] section

] <docs__get-box__4-quick-setup.md>
#block[
= Advanced Setup
<docs__get-box__5-advanced-setup.md__advanced-setup>
== Accessing Get Box’s Control Centre
<docs__get-box__5-advanced-setup.md__accessing-get-boxs-control-centre>
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
<docs__get-box__5-advanced-setup.md__custom-wi-fi-name-and-password>
\[TBD\]

] <docs__get-box__5-advanced-setup.md>
#block[
= Troubleshooting
<docs__get-box__6-troubleshooting.md__troubleshooting>
== Common Issues
<docs__get-box__6-troubleshooting.md__common-issues>
- #strong[Power Issues];: Ensure the Get Box is connected to a working
  power outlet.
- #strong[Connectivity Issues];: If the lights on Get Box flash on and
  off all together, then there is no connection, either through the
  modem or through a wired connection.

#box(width: 100%, image("images/troubleshooting-tips.svg"))

] <docs__get-box__6-troubleshooting.md>
#block[
= Technical Specifications
<docs__get-box__7-technical-specifications.md__technical-specifications>
- #strong[Model];: Get Box v1
- #strong[Network Compatibility];: LTE cat 4, up to 40 Mbps
- #strong[Wi-Fi Capacity];: Supports up to 20 users
- #strong[Power Requirements];: AC 110-240V, 50/60Hz

#box(width: 100%, image("images/technical-specifications.svg"))

] <docs__get-box__7-technical-specifications.md>
#block[
= Appendix
<docs__get-box__8-appendix.md__appendix>
== A: Firmware Updates
<docs__get-box__8-appendix.md__a-firmware-updates>
Keeping your Get Box updated ensures you have the latest features and
security enhancements. Your firmware will update automatically.

== B: Legal and Safety Information
<docs__get-box__8-appendix.md__b-legal-and-safety-information>
The Get Box complies with all relevant safety and regulatory standards.

#box(width: 100%, image("images/appendix-information.svg"))

] <docs__get-box__8-appendix.md>
#block[
] <docs__get-box__index.md>
