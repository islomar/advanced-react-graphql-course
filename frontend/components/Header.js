import Link from 'next/link';
import Nav from './Nav';

export default function Header() {
  return (
    <header>
      <div className="bar">
        <Link href="/">Sick fits</Link>
      </div>
      <div className="sub-class">
        <p>Search</p>
      </div>
      <Nav />
    </header>
  );
}
