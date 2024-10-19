// App.jsx
import React from 'react';
import styles from './header.module.scss';  // SCSS 모듈 불러오기

function Header() {  // 함수명 대문자로 변경
  return (
    <div className={styles.app}>
      <h1 className={styles.title}>SCSS 모듈 사용하기</h1>
    </div>
  );
}

export default Header;  // 대문자로 변경
