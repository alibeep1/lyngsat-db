// MyDiv.tsx
import React, { CSSProperties } from "react";

interface MyDivProps {
  children: React.ReactNode;
  style?: CSSProperties;
}

const MyDiv: React.FC<MyDivProps> = ({ children, style }) => {
  return (
    <div style={{ padding: '32px', ...style }}>
      {children}
    </div>
  );
}

export default MyDiv;
