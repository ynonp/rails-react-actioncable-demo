import React from 'react';

export default function Post({ from, text, color }) {
  return (
    <div
      style={{ color }}
    >
      <b>{from}</b> - {text}
    </div>
  )
}