# Vansha Platform

> Your family across generations.

Vansha is a future-ready private family intelligence, legacy, and social platform designed to help families understand relationships, preserve history, and stay connected across generations.

## Startup Vision
Vansha is not just a family tree application.

It is being architected as a scalable family platform combining:
- Relationship intelligence
- Family graph visualization
- Collaborative family management
- Private family social networking
- Events and invitation management
- Family legacy preservation
- Multicultural relationship localization
- Future AI-powered family intelligence

## Problem Statement
Modern families, especially diaspora families, face fragmented relationships, disconnected generations, scattered memories, and lack of structured family intelligence.

Existing tools are often limited to static genealogy trees without collaboration, social interaction, or cultural relationship awareness.

## Core Product Goals
### Phase 1 (MVP)
- Multi-provider authentication (Google, Apple, Phone OTP)
- Self-first onboarding
- Family member creation
- Family graph visualization
- Relationship intelligence engine
- Profile ownership and claim workflow
- Invitation-based family growth

### Phase 2
- Family collaboration and governance
- Family profile ownership permissions
- Shared editing workflows
- Notifications and engagement loops

### Phase 3
- Private family social feed
- Birthdays, anniversaries, memorial events
- Wedding and family event invitations
- Family group interactions

### Phase 4
- Legacy vault (stories, photos, memories, documents)
- Heritage timeline
- Voice memories
- Family knowledge preservation

### Phase 5
- AI relationship explainer
- Family storytelling intelligence
- Cultural relationship interpretation
- Heritage insights

## Engineering Principles
- Docs-first architecture
- Product-first thinking
- MVP implementation with future-ready design
- Clean modular architecture
- Proper semantic commit hygiene
- No hardcoded short-term assumptions
- Privacy-first family governance
- Multicultural relationship modeling

## Planned Platform Structure

```text
vansha-platform/
│
├── docs/
│   ├── PRODUCT_VISION.md
│   ├── STARTUP_THESIS.md
│   ├── MVP_SCOPE.md
│   ├── ROADMAP.md
│   ├── ARCHITECTURE.md
│   ├── DATA_MODEL.md
│   ├── AUTH_MODEL.md
│   ├── RELATIONSHIP_ENGINE.md
│   ├── PRIVACY_MODEL.md
│   ├── COLLABORATION_MODEL.md
│   ├── SOCIAL_PLATFORM_VISION.md
│   ├── EVENT_PLATFORM_VISION.md
│   ├── LEGACY_PLATFORM_VISION.md
│   ├── MONETIZATION.md
│   ├── DECISIONS.md
│   └── BACKLOG.md
│
├── mobile_app/
│   └── lib/
│       ├── core/
│       │   ├── config/
│       │   ├── routing/
│       │   ├── theme/
│       │   ├── constants/
│       │   ├── services/
│       │   ├── utils/
│       │   └── widgets/
│       │
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   ├── usecases/
│       │   └── value_objects/
│       │
│       ├── features/
│       │   ├── auth/
│       │   ├── onboarding/
│       │   ├── family_graph/
│       │   ├── profiles/
│       │   ├── invitations/
│       │   ├── relationship_engine/
│       │   ├── collaboration/
│       │   ├── social/
│       │   ├── events/
│       │   ├── legacy/
│       │   ├── notifications/
│       │   ├── search/
│       │   └── settings/
│       │
│       └── main.dart
│
├── backend/
│   ├── db/
│   │   ├── migrations/
│   │   ├── schema/
│   │   ├── seeds/
│   │   └── policies/
│   │
│   ├── services/
│   │   ├── auth/
│   │   ├── family_graph/
│   │   ├── relationship_engine/
│   │   ├── collaboration/
│   │   ├── events/
│   │   ├── social/
│   │   ├── notifications/
│   │   ├── media/
│   │   └── ai/
│   │
│   └── integrations/
│       ├── whatsapp/
│       ├── email/
│       ├── sms/
│       ├── calendar/
│       └── push_notifications/
│
├── shared/
│   ├── schemas/
│   ├── enums/
│   ├── contracts/
│   └── localization/
│
└── infra/
    ├── supabase/
    ├── ci_cd/
    └── environments/
```

## Initial Technology Direction
Frontend:
- Flutter (mobile-first)

Backend:
- Supabase
- PostgreSQL

Architecture Concepts:
- UserAccount != Person
- Phone != identity
- Canonical relationship graph
- Localization layer for relationship naming
- Global-ready platform design

## Execution Model
Founder / Product Vision:
- Business vision
- Product direction
- Strategic decisions

AI Product Architecture:
- Product architecture
- System design
- Documentation governance
- Startup strategy validation

Engineering Execution:
- Implementation via code generation and iterative delivery

## Current Status
Repository initialized.
Architecture foundation in progress.
Platform documentation-first build underway.
