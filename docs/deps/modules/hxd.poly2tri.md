# Package `hxd.poly2tri`

[← retour](../DEPENDENCIES.md)

## hxd.poly2tri.AdvancingFront

- Fichier : `hxd/poly2tri/AdvancingFront.hx` — 86 lignes — 0 blocs doc
- Types : `class AdvancingFront`
- Dépend de : `hxd.poly2tri.Constants`, `hxd.poly2tri.Node`, `hxd.poly2tri.Point`
- Utilisé par : `hxd.poly2tri.SweepContext`

## hxd.poly2tri.Basin

- Fichier : `hxd/poly2tri/Basin.hx` — 26 lignes — 0 blocs doc
- Types : `class Basin`
- Dépend de : `hxd.poly2tri.Node`
- Utilisé par : `hxd.poly2tri.SweepContext`

## hxd.poly2tri.Constants

- Fichier : `hxd/poly2tri/Constants.hx` — 23 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef Unit`, `typedef Unit`, `class Constants`
- Dépend de : `hxd.Math`
- Utilisé par : `hxd.poly2tri.AdvancingFront`, `hxd.poly2tri.Orientation`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`, `hxd.poly2tri.Utils`

## hxd.poly2tri.Edge

- Fichier : `hxd/poly2tri/Edge.hx` — 47 lignes — 0 blocs doc
- Types : `class Edge`
- Dépend de : `hxd.poly2tri.Point`
- Utilisé par : `hxd.poly2tri.EdgeEvent`, `hxd.poly2tri.Point`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`, `hxd.poly2tri.Triangle`

## hxd.poly2tri.EdgeEvent

- Fichier : `hxd/poly2tri/EdgeEvent.hx` — 13 lignes — 0 blocs doc
- Types : `class EdgeEvent`
- Dépend de : `hxd.poly2tri.Edge`
- Utilisé par : `hxd.poly2tri.SweepContext`

## hxd.poly2tri.Node

- Fichier : `hxd/poly2tri/Node.hx` — 57 lignes — 1 blocs doc
- Types : `class Node`
- Dépend de : `hxd.Math`, `hxd.poly2tri.Point`, `hxd.poly2tri.Triangle`
- Utilisé par : `hxd.poly2tri.AdvancingFront`, `hxd.poly2tri.Basin`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`

## hxd.poly2tri.Orientation

- Fichier : `hxd/poly2tri/Orientation.hx` — 23 lignes — 0 blocs doc — contient du `#if`
- Types : `class Orientation`
- Dépend de : `hxd.poly2tri.Constants`, `hxd.poly2tri.Point`
- Utilisé par : `hxd.poly2tri.Sweep`, `hxd.poly2tri.Triangle`

## hxd.poly2tri.Point

- Fichier : `hxd/poly2tri/Point.hx` — 76 lignes — 0 blocs doc — contient du `#if`
- Types : `class Point`
- Dépend de : `hxd.poly2tri.Edge`
- Utilisé par : `h2d.Graphics`, `hxd.poly2tri.AdvancingFront`, `hxd.poly2tri.Edge`, `hxd.poly2tri.Node`, `hxd.poly2tri.Orientation`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`, `hxd.poly2tri.Triangle`, `hxd.poly2tri.Utils`, `hxd.poly2tri.VisiblePolygon`

## hxd.poly2tri.Sweep

- Fichier : `hxd/poly2tri/Sweep.hx` — 657 lignes — 6 blocs doc — contient du `#if`
- Types : `class Sweep`
- Dépend de : `hxd.poly2tri.Constants`, `hxd.poly2tri.Edge`, `hxd.poly2tri.Node`, `hxd.poly2tri.Orientation`, `hxd.poly2tri.Point`, `hxd.poly2tri.SweepContext`, `hxd.poly2tri.Triangle`, `hxd.poly2tri.Utils`
- Utilisé par : `hxd.poly2tri.VisiblePolygon`

## hxd.poly2tri.SweepContext

- Fichier : `hxd/poly2tri/SweepContext.hx` — 153 lignes — 0 blocs doc — contient du `#if`
- Types : `class SweepContext`
- Dépend de : `hxd.Math`, `hxd.poly2tri.AdvancingFront`, `hxd.poly2tri.Basin`, `hxd.poly2tri.Constants`, `hxd.poly2tri.Edge`, `hxd.poly2tri.EdgeEvent`, `hxd.poly2tri.Node`, `hxd.poly2tri.Point`, `hxd.poly2tri.Triangle`
- Utilisé par : `hxd.poly2tri.Sweep`, `hxd.poly2tri.VisiblePolygon`

## hxd.poly2tri.Triangle

- Fichier : `hxd/poly2tri/Triangle.hx` — 387 lignes — 9 blocs doc
- Types : `class Triangle`
- Dépend de : `hxd.poly2tri.Edge`, `hxd.poly2tri.Orientation`, `hxd.poly2tri.Point`
- Utilisé par : `hxd.poly2tri.Node`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`

## hxd.poly2tri.Utils

- Fichier : `hxd/poly2tri/Utils.hx` — 90 lignes — 1 blocs doc
- Types : `class Utils`
- Dépend de : `hxd.poly2tri.Constants`, `hxd.poly2tri.Point`
- Utilisé par : `hxd.poly2tri.Sweep`

## hxd.poly2tri.VisiblePolygon

- Fichier : `hxd/poly2tri/VisiblePolygon.hx` — 70 lignes — 0 blocs doc
- Types : `class VisiblePolygon`
- Dépend de : `hxd.poly2tri.Point`, `hxd.poly2tri.Sweep`, `hxd.poly2tri.SweepContext`
