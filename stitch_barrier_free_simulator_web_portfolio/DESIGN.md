---
name: Luminous Accessibility
colors:
  surface: '#17130a'
  surface-dim: '#17130a'
  surface-bright: '#3e382e'
  surface-container-lowest: '#120e06'
  surface-container-low: '#201b12'
  surface-container: '#241f15'
  surface-container-high: '#2f291f'
  surface-container-highest: '#3a3429'
  on-surface: '#ece1d2'
  on-surface-variant: '#d3c5ad'
  inverse-surface: '#ece1d2'
  inverse-on-surface: '#353025'
  outline: '#9c8f79'
  outline-variant: '#4f4633'
  surface-tint: '#f8bd2a'
  primary: '#ffe2aa'
  on-primary: '#402d00'
  primary-container: '#fbc02d'
  on-primary-container: '#6c5000'
  inverse-primary: '#795900'
  secondary: '#4cd7f6'
  on-secondary: '#003640'
  secondary-container: '#03b5d3'
  on-secondary-container: '#00424e'
  tertiary: '#ffdeda'
  on-tertiary: '#68000a'
  tertiary-container: '#ffb7b1'
  on-tertiary-container: '#aa0a1b'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffdfa0'
  primary-fixed-dim: '#f8bd2a'
  on-primary-fixed: '#261a00'
  on-primary-fixed-variant: '#5c4300'
  secondary-fixed: '#acedff'
  secondary-fixed-dim: '#4cd7f6'
  on-secondary-fixed: '#001f26'
  on-secondary-fixed-variant: '#004e5c'
  tertiary-fixed: '#ffdad7'
  tertiary-fixed-dim: '#ffb3ad'
  on-tertiary-fixed: '#410004'
  on-tertiary-fixed-variant: '#930013'
  background: '#17130a'
  on-background: '#ece1d2'
  surface-variant: '#3a3429'
typography:
  display-lg:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '800'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '800'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Noto Sans
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Noto Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-caps:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
  kbd-text:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: '1'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  container-max: 1280px
  gutter: 24px
  margin-mobile: 16px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
  section-gap: 80px
---

## Brand & Style
The design system is centered on the concept of "Illuminating Barriers," focusing on high-contrast visibility and a sophisticated digital-first aesthetic. It serves a "Barrier-Free" campaign, targeting a diverse audience ranging from activists to policymakers. 

The visual style is a refined **Glassmorphism** executed against a deep, structural dark mode. This creates a sense of depth and focus, where important information "floats" above a stable foundation. The emotional response is one of clarity, safety, and modern urgency. Micro-animations like soft pulses on interactive elements and subtle hover lifts emphasize the tactile nature of "Braille-inspired" design, making the digital interface feel responsive and physically present.

## Colors
The palette is engineered for high legibility and semantic clarity.
- **Primary Yellow (#FBC02D):** Used for tactile metaphors, Braille-inspired elements, and primary calls to action. It transitions to **#F57F17** for active states.
- **Safety Cyan (#06B6D4):** Reserved for instructional paths, safety features, and positive affirmations of accessibility.
- **Warning Red (#EF4444):** Used strictly for barriers, alerts, and critical warnings.
- **Base Neutrals:** A foundation of **Slate-950 (#020617)** for backgrounds provides the necessary contrast ratio for the primary yellow to pop, while **Zinc-900 (#18181b)** defines secondary surface layers.

## Typography
The system employs a dual-font approach to ensure maximum readability across languages. **Inter** handles all UI labels, English text, and numerical data with its systematic, utilitarian clarity. **Noto Sans** is utilized for Korean body copy and long-form content, ensuring harmonious vertical rhythm and stroke weights that match Inter’s modern profile. 

Large display type should utilize tighter letter-spacing for a "poster" feel, while body text remains generously spaced to accommodate readers with visual impairments.

## Layout & Spacing
The layout follows a **Fluid Grid** model with a 12-column structure for desktop and a 4-column structure for mobile. 

- **Vertical Rhythm:** Spacing is strictly based on 4px increments.
- **Margins:** Desktop containers maintain a 1280px max-width with auto-margins. Mobile viewports use 16px side margins to maximize content area.
- **Sectioning:** Large gaps (80px+) are used to clearly delineate different campaign phases, preventing cognitive overload and ensuring a clear narrative flow.

## Elevation & Depth
Depth is achieved through **Glassmorphism** rather than traditional heavy shadows.
- **Surface Layer:** `rgba(24, 24, 27, 0.6)` with a `backdrop-filter: blur(12px)`.
- **Borders:** All elevated cards and containers use a 1px semi-transparent stroke `rgba(255, 255, 255, 0.1)` on the top/left to simulate a light source, and `rgba(255, 255, 255, 0.05)` elsewhere.
- **Floating State:** Active elements utilize a soft, tinted outer glow (Primary Yellow at 10% opacity) instead of a black shadow to maintain the "Luminous" theme.

## Shapes
This design system uses a **Rounded** shape language to balance the technical "monitor" feel with an approachable, human-centric "barrier-free" mission.
- **Standard Radius:** 0.5rem (8px) for buttons and inputs.
- **Card Radius:** 1rem (16px) for main content containers and monitor frames.
- **Braille Dots:** Elements representing Braille blocks must be perfect circles (50% radius) to maintain iconographic integrity.

## Components
- **Braille Buttons:** Primary buttons feature the Primary Yellow background. On hover, they initiate a subtle "pulse" animation—a scaling glow that expands and fades—simulating a beacon.
- **Monitor Frames:** Custom wrappers for video or screenshots with a Zinc-800 bezel, subtle glass reflection on the top-right corner, and a 16px corner radius.
- **Keyboard Shortcuts (`<kbd>`):** Styled with a dark Zinc-800 background, a 1px light border, and a slight bottom-heavy "keycap" shadow.
- **Card Grids:** Cards use the Glassmorphism specification. On hover, the card "lifts" by moving -4px on the Y-axis, and the border opacity increases to 0.3.
- **Input Fields:** Minimalist with a bottom-only border by default, transitioning to a full primary-yellow focus ring with a 2px blur when active.
- **Status Chips:** Small, pill-shaped indicators using the Cyan (Safety) or Red (Warning) palettes with a 10% background tint and 100% opacity text for contrast compliance.