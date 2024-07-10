## Image 1

**Protection Systems Application**

**Lecture (1)**

1. Generator
2. Transformers
3. B-B
4. Motor
5. Cable
6. T.L
7. Reactor
8. Capacitor

---

Reference: Principles of Power System Protection and Application - Lewis Blackburn
Chapter 8, 9

---

**Differential Protection**

**Principle of Operation:**

```
protected
circuit
```

---

**Note:**

(3 categories of power protection)
- Weak: If < 4I_f
- Strong: If > 4I_f

---

Arabic Content:

---

دراسة مكونات نظام الحماية للكهرباء
مكونات نظام الحماية للمستوى المعياري

---

Reference:

تطبيقات الحماية لأنظمة القوى: 
1. الحماية التفاضلية: المولدات والمحول - تمييز الأخطاء
2. حماية المحولات والمولدات - تمييز الأخطاء
3. الحماية التفاضلية: المحولات والمولدات

---

**Principle of Differential Protection:**
```
حماية المولدات - المحولات - المحركات - المغذيات - المفاعل - المكثف
```

(ملاحظة)
(3 فئات لأنظمة الحماية)
- ضعيف: If < 4I_f
- قوي: If > 4I_f

---

**Differential Protection:**

---

**Principle of Operation:**
1. 
```
protected
circuit
```
2. تجهيز دائرتين موصلتين (Circulated)
3. إعداد مرحل الحماية

---

## Image 2 

**There are 3 cases**

1. **Healthy Condition**
   - \( I_1 = I_2 \)
   - Two identical CTs
   - Then \( i_1 = i_2 \)
   - \( i_R = \text{Zero} \) → No operation order from Relay.
   ```
   ----[protected circuit]----
   |      CT       |       CT      |
   |     I1       |       I2      |
   |                R               |
   |           iR                |
   ```

2. **External Fault**
   - We find that \( I_1 = I_2 = I_F \)
   - \( i_R = \text{Zero too} \)
   - No operation.
   ```
   ----[protected circuit]----
   |      CT       |       CT      |
   |     I1       |       I2      |
   |                R               |
   |           iR                |
   ```

3. **Internal Fault**
   - \( I_1 = I_F1 \)
   - \( I_2 = -I_{F2} \) → \( i_2 = -i_{F_R} \)
   - So, \( i_R = i_{F_L} + i_{F_R} = i_f \)
   - Trip order [ \( i_R ≠ 0 \) ]
   ```
   ----[protected circuit]----
   |      CT       |       CT      |
   |     I1       |       I2      |
   |                R               |
   |           iR                |
   ```

---

**(magnitude level)** → over current Relay
- **√** overlay
- Overcurrent relay used to protect circulating
- The differential relay does not work due to the absence of circulating current.

**(Healthy)** 
- CTs magnetizing circuit → case 1 and 2
- **√** The relay will not operate because it is a fault of the magnetizing circuit.

**(Two correct signals)** 
- Differential relay is used to detect internal faults.

---

Arabic Content:

---

**(مستوى الحجم)** → مرحل التيار الزائد
- **√** تراكب
- يستخدم مرحل التيار الزائد لحماية الدائرة المتداولة
- لا يعمل المرحل التفاضلي بسبب غياب التيار المتداول.

**(صحي)** 
- دائرة مغناطيسية CTs → الحالة 1 و 2
- **√** لن يعمل المرحل لأنه خطأ في الدائرة المغناطيسية.

**(إشارتان صحيحيتان)** 
- يستخدم المرحل التفاضلي للكشف عن الأعطال الداخلية.

---

## Image 3

**This system** \[unit protection system\]

**Advantages:**
- Fault discrimination
- No need for coordination with any other relay
- Easy maintenance

**Disadvantages:**
- \[Not applicable to\] two circuits
- Communication issues

**Example:**
Protection of 15 km cable

**Diagram:**
```
 ----[protected circuit]----
 |      CT       |       CT      |
 |     I1       |       I2      |
 |                R               |
 |           iR                |
 FO (fiber optics)
```

**Relay types:**
- Digital relay
- Numerical relay (sampling at high frequency)

**Note:**
- Continuous waveforms are converted to samples.
- Synchronization issues can cause delay.

---

## Image 4

**System > 15 km**
- Use pilot protection system
- Power line carrier (PLC)

**Pilot Distance Relay:**
- Differential protection with pilot distance relay
- Distance protection is based on distance and delay characteristics

**Characteristics:**
1. Zone 1: Fault zone
2. Zone 2: Trip Zone
3. No operation zone

**Relay Types:**
1. Healthy
2. Internal fault
3. External fault

**Graph:**
- I\_R ≠ 0
- Trip / No operation

---

### Image 5

**I_min (0.1 - 0.2)**
```
B-B   Gen
Motor  Cable
XFMR
```

**Why I_min ≠ Zero:**
1. CT error
2. Leads error
3. Relay error

**Diagram:**
```
 ----[protected circuit]----
 |      CT       |       CT      |
 |     I1       |       I2      |
 |                R               |
 |           iR                |
 ```

**Stability-Sensitivity:**
- Maximum external through current at which relay will not operate (stability)
- Minimum internal fault current at which the relay will operate (sensitivity)

---

### Image 6

**Stability:**
- Maximum external through current at which relay will not operate

**Sensitivity:**
- Minimum internal fault current at which the relay will operate

**Diagram:**
```
 ----[protected circuit]----
 |      CT       |       CT      |
 |     I1       |       I2      |
 |                R               |
 |           iR                |
```

**How to calculate stability:**
1. Secondary currents of CTs
2. Relay characteristics
3. Ignore stability and sensitivity

**Next Lecture:**
- Explore stability and sensitivity in more detail