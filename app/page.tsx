"use client";

export default function Home() {
  return (
    <div className="flex min-h-screen flex-col items-center justify-center bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900">
      <main className="flex flex-col items-center justify-center gap-8 px-4">
        <h1 className="text-6xl font-bold text-white text-center">
          Test Stack Eleven Group
        </h1>
        <p className="text-xl text-purple-200 text-center max-w-2xl">
          POC Next.js 15 avec TypeScript et Tailwind CSS déployé sur Vercel
        </p>
        <button 
          onClick={() => alert('Stack testée avec succès ✅')}
          className="px-8 py-4 bg-purple-600 hover:bg-purple-700 text-white font-semibold rounded-lg shadow-lg transition-all duration-200 transform hover:scale-105"
        >
          Tester la Stack
        </button>
      </main>
    </div>
  );
}
