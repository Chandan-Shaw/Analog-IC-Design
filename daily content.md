### Day: 1-5
**Calculating Thevenin Equivalent Of Microphone**

- Sensitivity: -44dBV/Pa
- Condition: 94dB SPL at 1KHz which is sound pressure of 1Pa
- Normal Voice conversatin is typically 60 dB SPL
- **Vth Calculation**
  - Voice(Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
  - Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu VpK$ 
- **$V_{out-pk} = 0.178~ mV$**
- **Rth** =380 ohms.

**Thevenin Equivalent Circuit :**
<img src="https://github.com/silicon-vlsi/SI-2025-AnalogIC/blob/main/content/figures/Fig-d1-1-USBmic.png" width="800"/>
