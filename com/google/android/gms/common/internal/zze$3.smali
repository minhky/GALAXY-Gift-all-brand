.class final Lcom/google/android/gms/common/internal/zze$3;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zze;
.end annotation


# instance fields
.field final synthetic p:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$3;->p:[C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public b(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$3;->p:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
