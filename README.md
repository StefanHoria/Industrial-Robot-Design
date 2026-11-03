# Industrial Robot Design – Wall-Mounted T–R Manipulator

**English** | [Română](#română)

Design of a fixed industrial robot with a translation module (T) and a rotation module (R) that handles a 237 kg steel cylinder. University project for the *Robot Design* course (*Proiectarea Roboților*), Transilvania University of Brașov, 2026.

<p align="center">
  <img src="CATIA/imagini/Robot_v0_iso.png" height="420" alt="Robot ver. 0 – CATIA V5, isometric view">
  &nbsp;&nbsp;
  <img src="MATLAB/imagini/animatie_mechanics_explorer.png" height="420" alt="Simscape Multibody model in Mechanics Explorer">
</p>

## Task

- Kinematic structure **B(H) – T(HH) – R(VV) – P(V)**: wall-mounted base, horizontal translation, vertical rotation axis, vertical gripper.
- Handled object: steel cylinder, R = 200 mm, H = 240 mm (237 kg).
- Translation module T: stroke 225 mm, v<sub>max</sub> = 0.9 m/s, a<sub>max</sub> = 12.5 m/s².
- Rotation module R: φ = 280°, ω<sub>max</sub> = 140 °/s, ε<sub>max</sub> = 490 °/s².

## Work completed (stages I–II)

1. Functional and structural scheme, joint coordinate systems and workspace.
2. Gripping analysis (friction gripping with V-jaws, μ = 0.3) and gripper selection: **SCHUNK PGN-plus-P 380-2-AS-K** (pneumatic, 26.1 kN gripping force at 6 bar); design of the V-jaws.
3. 3D model, version 0, in **CATIA V5**: translation and rotation modules, base, 90° connecting elements, gripper, jaws and object; assembly by constraints and clash analysis (no interferences).
4. Inertial parameters about the rotation axis.
5. Dynamic model in **MATLAB / Simulink – Simscape Multibody (SimMechanics)**, built from the CATIA parts: trapezoidal motion laws, joint forces and torques, validation against CATIA and hand calculations.

## Key results

| Quantity | Value |
|---|---|
| Total mass of the robot (ver. 0) | 473.4 kg |
| Distance from the R axis to the gripper axis, L<sub>E</sub> | 300 mm |
| Moment of inertia about the R axis, J<sub>R</sub> | 35.04 kg·m² |
| Maximum driving force, joint T * | 5528 N |
| Maximum driving torque, joint R * | 1059 N·m |
| Mass / inertia deviation, Simscape vs. CATIA | < 0.05 % |

\* simultaneous motion of both joints (worst case); with a single joint moving: 4983 N = m·a and 299.5 N·m = J<sub>R</sub>·ε.

<p align="center">
  <img src="MATLAB/imagini/forte_momente_R.png" width="560" alt="Forces and torques in the rotation joint R">
</p>

## Repository structure

| Path | Content |
|---|---|
| [`Ghid.10.1 Memoriu tehnic PrRo Stefan Horia.pdf`](Ghid.10.1%20Memoriu%20tehnic%20PrRo%20Stefan%20Horia.pdf) (`.docx`) | technical report (in Romanian) |
| `schema_functionla.jpg` | functional scheme of the robot |
| `CATIA/` | parts (`.CATPart`) and assemblies (`.CATProduct`); main assembly: `Robot_v0.CATProduct` |
| `CATIA/STEP/` | STEP export of all parts and assemblies (opens in any CAD software) |
| `CATIA/imagini/` | images of the parts and of the robot |
| `MATLAB/robot_v0_sim.slx` | Simscape Multibody model (uses the motion-law function `lege_trapez.m`) |
| `MATLAB/imagini/` | model diagram, motion laws, joint forces and torques, Mechanics Explorer view |

## Tools

CATIA V5-6R2022 · MATLAB R2026b, Simulink, Simscape Multibody · Microsoft Word

## Opening the files

- **CATIA:** open `CATIA/Robot_v0.CATProduct`, or the STEP files in any CAD software.
- **MATLAB:** open `MATLAB/robot_v0_sim.slx` and press *Run* (requires Simscape Multibody). The 3D animation in Mechanics Explorer needs Java; in MATLAB R2026b, install the *MATLAB Support for OpenJDK* add-on. The *File Solid* blocks load the parts from the `CATIA` folder by absolute path; if the repository is cloned to another location, update the file paths in these blocks.

## Status

Work in progress – stages I–II of VI completed. Next: detailed design of the rotation and translation modules (motors, transmissions, bearings, guides), connecting elements, assembly drawing and detail drawings.

## Author

**Horia-Eusebiu Ștefan** – Transilvania University of Brașov.
Course coordinators: Prof. Gh. L. Mogan, I. D. Buzdugan.

---

## Română

[English](#industrial-robot-design--wall-mounted-tr-manipulator) | **Română**

Proiectarea unui robot industrial fix, cu un modul de translație (T) și un modul de rotație (R), pentru manipularea unui cilindru din oțel de 237 kg. Proiect de an la disciplina *Proiectarea Roboților*, Universitatea Transilvania din Brașov, 2026.

### Tema

- Structura cinematică **B(H) – T(HH) – R(VV) – P(V)**: bază fixată pe perete, translație orizontală, axă de rotație verticală, prehensor vertical.
- Obiectul manipulat: cilindru din oțel, R = 200 mm, H = 240 mm (237 kg).
- Modulul de translație T: cursa 225 mm, v<sub>max</sub> = 0,9 m/s, a<sub>max</sub> = 12,5 m/s².
- Modulul de rotație R: φ = 280°, ω<sub>max</sub> = 140 °/s, ε<sub>max</sub> = 490 °/s².

### Ce s-a realizat (vizele I–II)

1. Schema funcțională și structurală, sistemele de coordonate ale cuplelor și spațiul de lucru.
2. Analiza prinderii (prindere prin frecare, cu bacuri în V, μ = 0,3) și alegerea prehensorului: **SCHUNK PGN-plus-P 380-2-AS-K** (pneumatic, forță de strângere 26,1 kN la 6 bar); proiectarea bacurilor în V.
3. Modelul 3D, versiunea 0, în **CATIA V5**: modulele de translație și de rotație, baza, elementele de legătură la 90°, prehensorul, bacurile și obiectul; asamblare prin constrângeri și analiza interferențelor (fără interferențe).
4. Parametrii inerțiali față de axa de rotație.
5. Modelul dinamic în **MATLAB / Simulink – Simscape Multibody (SimMechanics)**, construit din piesele CATIA: legi de mișcare trapezoidale, forțele și momentele din cuple, validare față de CATIA și de calculul analitic.

### Rezultate principale

| Mărimea | Valoarea |
|---|---|
| Masa totală a robotului (ver. 0) | 473,4 kg |
| Distanța dintre axa R și axa prehensorului, L<sub>E</sub> | 300 mm |
| Momentul de inerție față de axa R, J<sub>R</sub> | 35,04 kg·m² |
| Forța maximă de acționare, cupla T * | 5528 N |
| Momentul maxim de acționare, cupla R * | 1059 N·m |
| Abaterea maselor / momentelor de inerție, Simscape față de CATIA | < 0,05 % |

\* mișcarea simultană a celor două cuple (cazul cel mai defavorabil); cu o singură cuplă în mișcare: 4983 N = m·a și 299,5 N·m = J<sub>R</sub>·ε.

### Structura depozitului

| Calea | Conținut |
|---|---|
| [`Ghid.10.1 Memoriu tehnic PrRo Stefan Horia.pdf`](Ghid.10.1%20Memoriu%20tehnic%20PrRo%20Stefan%20Horia.pdf) (`.docx`) | memoriul tehnic |
| `schema_functionla.jpg` | schema funcțională a robotului |
| `CATIA/` | piesele (`.CATPart`) și ansamblele (`.CATProduct`); ansamblul principal: `Robot_v0.CATProduct` |
| `CATIA/STEP/` | exportul STEP al tuturor pieselor și ansamblelor (se deschide în orice program CAD) |
| `CATIA/imagini/` | imagini ale pieselor și ale robotului |
| `MATLAB/robot_v0_sim.slx` | modelul Simscape Multibody (folosește funcția legii de mișcare `lege_trapez.m`) |
| `MATLAB/imagini/` | schema modelului, legile de mișcare, forțele și momentele din cuple, vederea din Mechanics Explorer |

### Programe folosite

CATIA V5-6R2022 · MATLAB R2026b, Simulink, Simscape Multibody · Microsoft Word

### Deschiderea fișierelor

- **CATIA:** se deschide `CATIA/Robot_v0.CATProduct` sau fișierele STEP, în orice program CAD.
- **MATLAB:** se deschide `MATLAB/robot_v0_sim.slx` și se apasă *Run* (necesită Simscape Multibody). Animația 3D din Mechanics Explorer are nevoie de Java; în MATLAB R2026b se instalează add-on-ul *MATLAB Support for OpenJDK*. Blocurile *File Solid* încarcă piesele din folderul `CATIA` prin cale absolută; dacă depozitul este copiat în alt loc, căile din aceste blocuri trebuie actualizate.

### Stadiul proiectului

În lucru – vizele I–II din VI sunt finalizate. Urmează: proiectarea detaliată a modulelor de rotație și de translație (motoare, transmisii, lagăre, ghidaje), elementele de legătură, desenul de ansamblu și desenele de execuție.

### Autor

**Horia-Eusebiu Ștefan** – Universitatea Transilvania din Brașov.
Coordonatori: prof. Gh. L. Mogan, I. D. Buzdugan.
