.class public final Lrx/subscriptions/BooleanSubscription;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field static final b:Lrx/functions/Action0;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Lrx/subscriptions/BooleanSubscription$1;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription$1;-><init>()V

    sput-object v0, Lrx/subscriptions/BooleanSubscription;->b:Lrx/functions/Action0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/subscriptions/BooleanSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/BooleanSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static a()Lrx/subscriptions/BooleanSubscription;
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    return-object v0
.end method

.method public static a(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/BooleanSubscription;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 68
    sget-object v1, Lrx/subscriptions/BooleanSubscription;->b:Lrx/functions/Action0;

    if-eq v0, v1, :cond_1f

    .line 69
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/subscriptions/BooleanSubscription;->b:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 70
    if-eqz v0, :cond_1f

    sget-object v1, Lrx/subscriptions/BooleanSubscription;->b:Lrx/functions/Action0;

    if-eq v0, v1, :cond_1f

    .line 71
    invoke-interface {v0}, Lrx/functions/Action0;->a()V

    .line 74
    :cond_1f
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subscriptions/BooleanSubscription;->b:Lrx/functions/Action0;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
